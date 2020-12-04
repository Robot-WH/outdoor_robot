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

class diagnosis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.initInfo = null;
      this.hardwareInfo = null;
      this.Node = null;
      this.State = null;
      this.Para = null;
    }
    else {
      if (initObj.hasOwnProperty('initInfo')) {
        this.initInfo = initObj.initInfo
      }
      else {
        this.initInfo = 0;
      }
      if (initObj.hasOwnProperty('hardwareInfo')) {
        this.hardwareInfo = initObj.hardwareInfo
      }
      else {
        this.hardwareInfo = 0;
      }
      if (initObj.hasOwnProperty('Node')) {
        this.Node = initObj.Node
      }
      else {
        this.Node = 0;
      }
      if (initObj.hasOwnProperty('State')) {
        this.State = initObj.State
      }
      else {
        this.State = 0;
      }
      if (initObj.hasOwnProperty('Para')) {
        this.Para = initObj.Para
      }
      else {
        this.Para = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type diagnosis
    // Serialize message field [initInfo]
    bufferOffset = _serializer.uint8(obj.initInfo, buffer, bufferOffset);
    // Serialize message field [hardwareInfo]
    bufferOffset = _serializer.uint8(obj.hardwareInfo, buffer, bufferOffset);
    // Serialize message field [Node]
    bufferOffset = _serializer.uint8(obj.Node, buffer, bufferOffset);
    // Serialize message field [State]
    bufferOffset = _serializer.uint8(obj.State, buffer, bufferOffset);
    // Serialize message field [Para]
    bufferOffset = _serializer.uint8(obj.Para, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type diagnosis
    let len;
    let data = new diagnosis(null);
    // Deserialize message field [initInfo]
    data.initInfo = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hardwareInfo]
    data.hardwareInfo = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Node]
    data.Node = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [State]
    data.State = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Para]
    data.Para = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dashan_msg/diagnosis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e928f8638651cca003f8f90f1a284ea4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #initial infomation
    uint8 initInfo
    #0:ok 1:motor
    uint8 hardwareInfo
    #nodes state 0:ok 1:notok
    uint8 Node
    uint8 State
    uint8 Para
    
    #navNodeInfo=1
    #odomNodeInfo=2
    #modeNodeInfo=3
    #coreNodeInfo=4
    #bringupNodeInfo=5
    #diagNodeInfo=6
    #serialNodeInfo=7
    #lidarNodeInfo=8
    #rpcNodeInfo=9
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new diagnosis(null);
    if (msg.initInfo !== undefined) {
      resolved.initInfo = msg.initInfo;
    }
    else {
      resolved.initInfo = 0
    }

    if (msg.hardwareInfo !== undefined) {
      resolved.hardwareInfo = msg.hardwareInfo;
    }
    else {
      resolved.hardwareInfo = 0
    }

    if (msg.Node !== undefined) {
      resolved.Node = msg.Node;
    }
    else {
      resolved.Node = 0
    }

    if (msg.State !== undefined) {
      resolved.State = msg.State;
    }
    else {
      resolved.State = 0
    }

    if (msg.Para !== undefined) {
      resolved.Para = msg.Para;
    }
    else {
      resolved.Para = 0
    }

    return resolved;
    }
};

module.exports = diagnosis;
