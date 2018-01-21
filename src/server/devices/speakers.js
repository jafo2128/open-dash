// ------------------------------  OPEN-DASH ----------------------------------- //
// -----------------  https://github.com/physiii/open-dash/devices  -------------------- //
// ---------------------------------- speakers.js --------------------------------------- //



//module for system (master) volume controls


var spawn = require('child_process').spawn;

module.exports = {
  raiseVolume: raiseVolume,
  lowerVolume: lowerVolume,
  mute: mute,
  play: play,
  next: next,
  speaker_test: speaker_test,
}

//raise volume by 5 units
function raiseVolume() {
  return new Promise( function(resolve, reject) {
    spawn('xdotool', ['key', 'XF86AudioRaiseVolume']);
    resolve(true);
  });
};

//lower volume by 5 units
function lowerVolume() {
  return new Promise( function(resolve, reject) {
    spawn('xdotool', ['key', 'XF86AudioLowerVolume']);
    resolve(true);
  });
};


//mute if not-muted, unmute if muted
function mute() {
  return new Promise( function(resolve, reject) {
    spawn('xdotool', ['key', 'XF86AudioMute']);
    resolve(true);
  });
};

//functions play, pause, resume, next should be in media player
//but leaving play and next here for now
function play() {
  return new Promise( function(resolve, reject) {
    spawn('xdotool', ['key', 'XF86AudioPlay']);
    resolve(true);
  });
};

function next() {
  return new Promise( function(resolve, reject) {
    spawn('xdotool', ['key', 'XF86AudioNext']);
    resolve(true);
  });
};

//Test Functions

function speaker_test() {
  console.log("Testing speaker Module");
  lowerVolume().then(function(){
    return raiseVolume();
  }).then(function() {
    return lowerVolume();
  }).then(function() {
    return mute();
  }).then(function() {
    console.log("Finished running test.")
  })
};
