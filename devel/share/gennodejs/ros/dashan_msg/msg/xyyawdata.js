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

class xyyawdata {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flag = null;
      this.XValue = null;
      this.YValue = null;
      this.YAWValue = null;
    }
    else {
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
      if (initObj.hasOwnProperty('XValue')) {
        this.XValue = initObj.XValue
      }
      else {
        this.XValue = 0;
      }
      if (initObj.hasOwnProperty('YValue')) {
        this.YValue = initObj.YValue
      }
      else {
        this.YValue = 0;
      }
      if (initObj.hasOwnProperty('YAWValue')) {
        this.YAWValue = initObj.YAWValue
      }
      else {
        this.YAWValue = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type xyyawdata
    // Serialize message field [flag]
    bufferOffset = _serializer.uint8(obj.flag, buffer, bufferOffset);
    // Serialize message field [XValue]
    bufferOffset = _serializer.int32(obj.XValue, buffer, bufferOffset);
    // Serialize message field [YValue]
    bufferOffset = _serializer.int32(obj.YValue, buffer, bufferOffset);
    // Serialize message field [YAWValue]
    bufferOffset = _serializer.int32(obj.YAWValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type xyyawdata
    let len;
    let data = new xyyawdata(null);
    // Deserialize message field [flag]
    data.flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [XValue]
    data.XValue = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [YValue]
    data.YValue = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [YAWValue]
    data.YAWValue = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dashan_msg/xyyawdata';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f741085a90ad3eabdab8909f70ea8a0d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 flag
    int32 XValue
    int32 YValue
    int32 YAWValue
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new xyyawdata(null);
    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    if (msg.XValue !== undefined) {
      resolved.XValue = msg.XValue;
    }
    else {
      resolved.XValue = 0
    }

    if (msg.YValue !== undefined) {
      resolved.YValue = msg.YValue;
    }
    else {
      resolved.YValue = 0
    }

    if (msg.YAWValue !== undefined) {
      resolved.YAWValue = msg.YAWValue;
    }
    else {
      resolved.YAWValue = 0
    }

    return resolved;
    }
};

module.exports = xyyawdata;
