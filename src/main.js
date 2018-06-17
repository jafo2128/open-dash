// ---------------------------  USPS Project -------------------------------- //
// --------------  https://github.com/physiii/open-dash  ----------------- //
// ----------------------------- nwpm.js ---------------------------------- //

const crypto = require('crypto'),
  exec = require('child_process').exec,
  spawn = require('child_process').spawn,
  http = require('http'),
  os = require('os'),
  request = require('request'),
  fs = require('fs'),
  update = require('./system/update.js'),
  socket = require('socket.io'),
  system = require('./system/system.js'),
  db = require('./server/database.js'),
  daughter = require('./server/devices/daughter.js'),
  can = require('./server/devices/can/can.js'),
  configuration = require('./server/configuration.js'),
  constant = require('./constants.js'),
  server = http.createServer().listen(constant.SOCKET_PORT),
  process_io = socket(server),
  remoteIO = socket(1234);

let number_of_doors_open = 0,
  key_position;

// Start streaming server.
require('./server/stream.js');

process.env['NODE_TLS_REJECT_UNAUTHORIZED'] = '0';

module.exports = {
  find_index: find_index,
  get_mac: get_mac,
  get_local_ip: get_local_ip,
  get_public_ip: get_public_ip,
  shutdown: shutdown
};

// Initialize config.
configuration.readConfig(
  (error, config) => {
    // Open serial port to daughter board.
    daughter.openSerialPort(config.daughter_serial);
  },
  // Config defaults
  {
    "wireless_adapter": "wlp3s0",
    "ethernet_adapter": "enp2s0",
    "broadcast_ssid": "dash",
    "password": "",
    "daughter_serial": "/dev/ttyUSB0",
    "rear_camera": "/dev/video0"
  },
  () => console.log('Created config.json')
);

// Shut down when the key is off and a door is open.
function checkForShutDownConditions () {
  if (number_of_doors_open > 0 && key_position < 1) {
    system.shutdown(0);
  }
}
can.on('door', (data) => {
  if (data.is_door_open) {
    number_of_doors_open += 1;
  } else {
    number_of_doors_open -= 1;
  }

  checkForShutDownConditions();
});
can.on('key', (data) => {
  key_position = data.key_position;

  checkForShutDownConditions();
});

process_io.on('connection', function (socket) {
  console.info(socket.id + " | client connected" );

  socket.on('get token', function (data) {
    var mac = data.mac;
    //var name = data.name;
    //var salt = data.salt //some random value}
    var token = crypto.createHash('sha512').update(mac).digest('hex');
    data.token = token;
    var public_ip = socket.request.connection.remoteAddress;
    public_ip = public_ip.slice(7);
    data.public_ip = public_ip;
    socket.emit('get token',data);
    var index = find_index(device_objects,'token',token);
    if (index > -1) {
      //database.store_device_object(data);
      device_objects[index].socket = socket;
      console.log('get token | updated socket',mac);
    } else {
      data.groups = [mac];
      data.socket = socket;
      device_objects.push(data);
      database.store_device_object(data);
      console.log('get token | added device',mac);
    }

    //if (!groups) groups = [];
    index = find_index(groups,'group_id',mac);
    if (index < 0) {
      var group = {group_id:mac, mode:'init', type:['alarm'], members:[mac]};
      groups.push(group);
      database.store_group(group);
    }
    console.log("get token",mac);
  });


  socket.on('restart', function (data) {
    console.log("Received Restart App Message");
    system.restartApp();
  });

  socket.on('quit', function (data) {
    console.log("Received Quit App Message");
    system.quitApp();
  });
  socket.on('reboot', function (data) {
    console.log("Reboot System");
    setTimeout(function(){
      system.reboot_sys();
    }, 100);

  });
  socket.on('cancel-reboot', function (data) {
    console.log("Cancel Reboot");
    setTimeout(function(){
      system.canc_reboot();
    }, 100);

  });
  socket.on('shutdown', function (data) {
    console.log("Shutdown System");
    setTimeout(function(){
      system.shutdown();
    }, 100);

  });
  socket.on('cancel-shutdown', function (data) {
    console.log("Cancel Shutdown");
    setTimeout(function(){
      system.cancelShutdown();
    }, 100);

  });
  socket.on('get-version', function (data) {
    console.log("Get App Version");
    update.getVersion().then(function (version) {
      socket.emit("version", version);
    }).catch(function (err) {
      socket.emit("get-version-failure", err);
    });
  });
  socket.on('update', function (data) {
    console.log("Update App");
    update.pull().then(function (pulled) {
      if (pulled === true) socket.emit("updated", true);
      else socket.emit("updated", pulled);
    }).catch(function (err) {
      socket.emit("update-failure", err);
    });

  });

  socket.on('start_vnc', function (data) {
    console.log("launching vnc");
    remote.start_vnc();

  });
  socket.on('device-list', function (data) {
    console.log("Got device list");
    socket.broadcast.emit('device-list', data);

  });
  socket.on('save-pandora-account', function (data) {
    console.log("Save pandora account");
    db.savePandoraAccount(data).then(() => {
      socket.emit("save-pandora-account", { success: true, message: "account info saved" });
    }).catch((err) => {
      socket.emit("save-pandora-account", { success: true, message: "account info saved" });
    });

  });
  socket.on('get-pandora-account', function (data) {
    console.log("Get pandora account");
    db.getPandoraAccount(data).then((account) => {
      socket.emit("get-pandora-account", account);
    }).catch((err) => {
      socket.emit("get-pandora-account", { success: false, message: err });
    });

  });
});


remoteIO.on('connection', function (socket) {
  console.info(socket.id + " | remote client connected");


  socket.on('screenshot', function (data) {
    console.log("Got screenshot");
  });
});

// ---------------------- device info  ------------------- //
var local_ip = "init";
var ifaces = os.networkInterfaces();
var mac = "init";
var device_type = ["gateway"];
var public_ip = "init";
get_public_ip();
get_local_ip();
get_mac();
main_loop();

function get_local_ip() {
  Object.keys(ifaces).forEach(function (ifname) {
    var alias = 0;
    ifaces[ifname].forEach(function (iface) {
      if ('IPv4' !== iface.family || iface.internal !== false) {
      // skip over internal (i.e. 127.0.0.1) and non-ipv4 addresses
      return;
	    }
      if (alias >= 1) {
      // this single interface has multiple ipv4 addresses
      //console.log(ifname + ':' + alias, iface.address);
      } else {

	// this interface has only one ipv4 adress
	      //console.log(ifname, iface.address);
	    }
      local_ip = iface.address;
      ++alias;
      module.exports.local_ip = local_ip;
    });
  });
}

function get_public_ip() {
  request.get(
  'http://pyfi.org/php/get_ip.php',
  function (error, response, data) {
    if (!error && response.statusCode == 200) {
      public_ip = data;
      module.exports.public_ip = public_ip;
      if (error !== null) console.log(error);
    }
  });
}


// ----------------------  disk management ------------------- //
var diskspace = require('diskspace');
var findRemoveSync = require('find-remove');
var _ = require('underscore');
var path = require('path');
var rimraf = require('rimraf');
var free_space = 0;
timeout();
check_diskspace();
function timeout() {
  setTimeout(function () {
    check_diskspace();
    timeout();
  }, 30*1000);
}

function check_diskspace() {
  diskspace.check('/', function (err, total, free, status) {
    //console.log("free space: " + free);
    if (free < 2000000000) {
      remove_old_files();
    }
    var info = {free:free, total:total}
    return info;
  });
}

function remove_old_files() {
      // Return only base file name without dir
      var oldest_dir = getMostRecentFileName('/var/lib/motion');
      try {
       var result = findRemoveSync('/var/lib/motion/' + oldest_dir, {age: {seconds: 0}}, {files: '*'});
       rimraf('/var/lib/motion/' + oldest_dir, function(error) {
        if(error) {
          console.log(error);
        } else {
          console.log('Files deleted');
        }
      });
      console.log("removed old files | " + oldest_dir);
      }
      catch (e) {
	console.log(e);
      }
}

// -------------------------------------------------------------- //
function get_mac () {
  require('getmac').getMac(function(err,macAddress){
    if (err)  throw err
    mac = macAddress.replace(/:/g,'').replace(/-/g,'').toLowerCase();
    var token = crypto.createHash('sha512').update(mac).digest('hex');
    console.log("Mac: (" + mac + ")");
    module.exports.mac = mac;
  });
}

function main_loop () {
  setTimeout(function () {
    get_public_ip();
    main_loop();
    //console.log("main loop");
  }, 60*1000);
}

function find_index(array, key, value) {
  for (var i=0; i < array.length; i++) {
    if (array[i][key] == value) {
      return i;
    }
  }
  return -1;
}

function getMostRecentFileName(dir) {
  var files = fs.readdirSync(dir);
  return _.min(files, function (f) {
    var fullpath = path.join(dir, f);
    return fs.statSync(fullpath).ctime;
  });
}


function shutdown() {
  console.log("Program Terminating");
  process.exit()
  return;
}


///////////////////////End of Code. Only Test functions below this line.


function test() {
  console.log("Testing NWPM Module");
  return;
};
