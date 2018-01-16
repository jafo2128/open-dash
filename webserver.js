// ------------------------------  OPEN-DASH ----------------------------------- //
// -----------------  https://github.com/physiii/open-dash -------------------- //
// ---------------------------------- webserver.js ------------------------------------ //

var express = require('express');
var app = express();
var fs = require('fs');
var http = require('http');
var https = require('https');
var console = require('console');
var socket = require('socket.io');
var port = 8080

var options = {
   key  : fs.readFileSync('server.key'),
   cert : fs.readFileSync('server.crt')
};

//Create SSL Server
const server = https.createServer(app, options).listen(port, function(){
  console.log("Express Server listening on port " + port);
});
var process_io = socket(server);

module.exports = {

};



function handler (req, res) {
  fs.readFile(__dirname + './interface.js',
  function (err, data) {
    if (err) {
      res.writeHead(500);
      return res.end('Error loading interface.js');
    }

    res.writeHead(200);
    res.end(data);
  });
}

process_io.on('connection', function(socket) {
   console.log('A user connected');

   socket.emit('news', { hello: 'world' });

   socket.on('my other event', function (data) {
     console.log(data);
   });

   socket.on('disconnect', function () {
     console.log('A user disconnected');
   });


});

//http.listen(3000, function() {
//   console.log('listening on *:3000');
//});as

function test() {
  return;
};
