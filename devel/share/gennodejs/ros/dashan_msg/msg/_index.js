
"use strict";

let customRoute = require('./customRoute.js');
let wheelSpeed = require('./wheelSpeed.js');
let Mode = require('./Mode.js');
let hmiStatus = require('./hmiStatus.js');
let ribbontask = require('./ribbontask.js');
let zhishancmd = require('./zhishancmd.js');
let imudata = require('./imudata.js');
let SaveMap = require('./SaveMap.js');
let diagnosis = require('./diagnosis.js');
let xyyawdata = require('./xyyawdata.js');

module.exports = {
  customRoute: customRoute,
  wheelSpeed: wheelSpeed,
  Mode: Mode,
  hmiStatus: hmiStatus,
  ribbontask: ribbontask,
  zhishancmd: zhishancmd,
  imudata: imudata,
  SaveMap: SaveMap,
  diagnosis: diagnosis,
  xyyawdata: xyyawdata,
};
