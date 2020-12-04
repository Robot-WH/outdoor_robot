// Auto-generated. Do not edit!

// (in-package dashan_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class hmiStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.commLinkState = null;
      this.buttonState = null;
      this.batteryState = null;
      this.batteryPercent = null;
      this.temperature = null;
      this.humidity = null;
      this.smogAlert = null;
      this.pushRodPos = null;
      this.emergentState = null;
      this.zhishancmdshow = null;
      this.pos_x = null;
      this.pos_y = null;
    }
    else {
      if (initObj.hasOwnProperty('commLinkState')) {
        this.commLinkState = initObj.commLinkState
      }
      else {
        this.commLinkState = 0;
      }
      if (initObj.hasOwnProperty('buttonState')) {
        this.buttonState = initObj.buttonState
      }
      else {
        this.buttonState = 0;
      }
      if (initObj.hasOwnProperty('batteryState')) {
        this.batteryState = initObj.batteryState
      }
      else {
        this.batteryState = 0;
      }
      if (initObj.hasOwnProperty('batteryPercent')) {
        this.batteryPercent = initObj.batteryPercent
      }
      else {
        this.batteryPercent = 0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0;
      }
      if (initObj.hasOwnProperty('humidity')) {
        this.humidity = initObj.humidity
      }
      else {
        this.humidity = 0;
      }
      if (initObj.hasOwnProperty('smogAlert')) {
        this.smogAlert = initObj.smogAlert
      }
      else {
        this.smogAlert = 0;
      }
      if (initObj.hasOwnProperty('pushRodPos')) {
        this.pushRodPos = initObj.pushRodPos
      }
      else {
        this.pushRodPos = 0;
      }
      if (initObj.hasOwnProperty('emergentState')) {
        this.emergentState = initObj.emergentState
      }
      else {
        this.emergentState = 0;
      }
      if (initObj.hasOwnProperty('zhishancmdshow')) {
        this.zhishancmdshow = initObj.zhishancmdshow
      }
      else {
        this.zhishancmdshow = 0;
      }
      if (initObj.hasOwnProperty('pos_x')) {
        this.pos_x = initObj.pos_x
      }
      else {
        this.pos_x = 0.0;
      }
      if (initObj.hasOwnProperty('pos_y')) {
        this.pos_y = initObj.pos_y
      }
      else {
        this.pos_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type hmiStatus
    // Serialize message field [commLinkState]
    bufferOffset = _serializer.uint8(obj.commLinkState, buffer, bufferOffset);
    // Serialize message field [buttonState]
    bufferOffset = _serializer.uint8(obj.buttonState, buffer, bufferOffset);
    // Serialize message field [batteryState]
    bufferOffset = _serializer.uint8(obj.batteryState, buffer, bufferOffset);
    // Serialize message field [batteryPercent]
    bufferOffset = _serializer.uint8(obj.batteryPercent, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.uint8(obj.temperature, buffer, bufferOffset);
    // Serialize message field [humidity]
    bufferOffset = _serializer.uint8(obj.humidity, buffer, bufferOffset);
    // Serialize message field [smogAlert]
    bufferOffset = _serializer.uint8(obj.smogAlert, buffer, bufferOffset);
    // Serialize message field [pushRodPos]
    bufferOffset = _serializer.uint8(obj.pushRodPos, buffer, bufferOffset);
    // Serialize message field [emergentState]
    bufferOffset = _serializer.uint8(obj.emergentState, buffer, bufferOffset);
    // Serialize message field [zhishancmdshow]
    bufferOffset = _serializer.uint8(obj.zhishancmdshow, buffer, bufferOffset);
    // Serialize message field [pos_x]
    bufferOffset = _serializer.float32(obj.pos_x, buffer, bufferOffset);
    // Serialize message field [pos_y]
    bufferOffset = _serializer.float32(obj.pos_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type hmiStatus
    let len;
    let data = new hmiStatus(null);
    // Deserialize message field [commLinkState]
    data.commLinkState = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [buttonState]
    data.buttonState = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [batteryState]
    data.batteryState = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [batteryPercent]
    data.batteryPercent = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [humidity]
    data.humidity = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [smogAlert]
    data.smogAlert = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pushRodPos]
    data.pushRodPos = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [emergentState]
    data.emergentState = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [zhishancmdshow]
    data.zhishancmdshow = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pos_x]
    data.pos_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pos_y]
    data.pos_y = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dashan_msg/hmiStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '783462f146126d76e1d0b3fc51dd06bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #communication link state
    uint8 commLinkState
    #button state
    uint8 buttonState
    #battery info
    uint8 batteryState  # 0:normal state; 1:charge state
    uint8 batteryPercent  # left percent 5%-100%
    
    #temperature
    uint8 temperature
    #humidity
    uint8 humidity
    #smog alert
    uint8 smogAlert  #1:alert 	0:no smog
    #push rod pos
    uint8 pushRodPos
    #emergent push button
    uint8 emergentState
    #define CMD_SAVE_INIT_PARA 1
    #define CMD_SAVE_GOAL_PSTN 2 here send the pos_x pos_y
    #define CMD_SEND_GOALS 3 
    #define CMD_SEND_CURR_PSTN 4
    #define CMD_SAVE_POS 5
    #define CMD_SEND_POS 6
    #define CMD_SET_INIT_POS 7
    #define CMD_VOICE 8
    #define CMD_CLEAR_NAVIGOALS 9
    uint8 zhishancmdshow
    #position show
    float32 pos_x
    float32 pos_y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new hmiStatus(null);
    if (msg.commLinkState !== undefined) {
      resolved.commLinkState = msg.commLinkState;
    }
    else {
      resolved.commLinkState = 0
    }

    if (msg.buttonState !== undefined) {
      resolved.buttonState = msg.buttonState;
    }
    else {
      resolved.buttonState = 0
    }

    if (msg.batteryState !== undefined) {
      resolved.batteryState = msg.batteryState;
    }
    else {
      resolved.batteryState = 0
    }

    if (msg.batteryPercent !== undefined) {
      resolved.batteryPercent = msg.batteryPercent;
    }
    else {
      resolved.batteryPercent = 0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0
    }

    if (msg.humidity !== undefined) {
      resolved.humidity = msg.humidity;
    }
    else {
      resolved.humidity = 0
    }

    if (msg.smogAlert !== undefined) {
      resolved.smogAlert = msg.smogAlert;
    }
    else {
      resolved.smogAlert = 0
    }

    if (msg.pushRodPos !== undefined) {
      resolved.pushRodPos = msg.pushRodPos;
    }
    else {
      resolved.pushRodPos = 0
    }

    if (msg.emergentState !== undefined) {
      resolved.emergentState = msg.emergentState;
    }
    else {
      resolved.emergentState = 0
    }

    if (msg.zhishancmdshow !== undefined) {
      resolved.zhishancmdshow = msg.zhishancmdshow;
    }
    else {
      resolved.zhishancmdshow = 0
    }

    if (msg.pos_x !== undefined) {
      resolved.pos_x = msg.pos_x;
    }
    else {
      resolved.pos_x = 0.0
    }

    if (msg.pos_y !== undefined) {
      resolved.pos_y = msg.pos_y;
    }
    else {
      resolved.pos_y = 0.0
    }

    return resolved;
    }
};

module.exports = hmiStatus;
