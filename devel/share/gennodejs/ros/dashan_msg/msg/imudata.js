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

class imudata {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Temp = null;
      this.Ax = null;
      this.Ay = null;
      this.Az = null;
      this.Gx = null;
      this.Gy = null;
      this.Gz = null;
      this.Yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('Temp')) {
        this.Temp = initObj.Temp
      }
      else {
        this.Temp = 0.0;
      }
      if (initObj.hasOwnProperty('Ax')) {
        this.Ax = initObj.Ax
      }
      else {
        this.Ax = 0.0;
      }
      if (initObj.hasOwnProperty('Ay')) {
        this.Ay = initObj.Ay
      }
      else {
        this.Ay = 0.0;
      }
      if (initObj.hasOwnProperty('Az')) {
        this.Az = initObj.Az
      }
      else {
        this.Az = 0.0;
      }
      if (initObj.hasOwnProperty('Gx')) {
        this.Gx = initObj.Gx
      }
      else {
        this.Gx = 0.0;
      }
      if (initObj.hasOwnProperty('Gy')) {
        this.Gy = initObj.Gy
      }
      else {
        this.Gy = 0.0;
      }
      if (initObj.hasOwnProperty('Gz')) {
        this.Gz = initObj.Gz
      }
      else {
        this.Gz = 0.0;
      }
      if (initObj.hasOwnProperty('Yaw')) {
        this.Yaw = initObj.Yaw
      }
      else {
        this.Yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type imudata
    // Serialize message field [Temp]
    bufferOffset = _serializer.float32(obj.Temp, buffer, bufferOffset);
    // Serialize message field [Ax]
    bufferOffset = _serializer.float32(obj.Ax, buffer, bufferOffset);
    // Serialize message field [Ay]
    bufferOffset = _serializer.float32(obj.Ay, buffer, bufferOffset);
    // Serialize message field [Az]
    bufferOffset = _serializer.float32(obj.Az, buffer, bufferOffset);
    // Serialize message field [Gx]
    bufferOffset = _serializer.float32(obj.Gx, buffer, bufferOffset);
    // Serialize message field [Gy]
    bufferOffset = _serializer.float32(obj.Gy, buffer, bufferOffset);
    // Serialize message field [Gz]
    bufferOffset = _serializer.float32(obj.Gz, buffer, bufferOffset);
    // Serialize message field [Yaw]
    bufferOffset = _serializer.float32(obj.Yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type imudata
    let len;
    let data = new imudata(null);
    // Deserialize message field [Temp]
    data.Temp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Ax]
    data.Ax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Ay]
    data.Ay = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Az]
    data.Az = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gx]
    data.Gx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gy]
    data.Gy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gz]
    data.Gz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Yaw]
    data.Yaw = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dashan_msg/imudata';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80dfed3c14e2a11e7333746f7785dbcc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Temp
    
    float32 Ax
    float32 Ay
    float32 Az
    
    float32 Gx
    float32 Gy
    float32 Gz
    float32 Yaw
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new imudata(null);
    if (msg.Temp !== undefined) {
      resolved.Temp = msg.Temp;
    }
    else {
      resolved.Temp = 0.0
    }

    if (msg.Ax !== undefined) {
      resolved.Ax = msg.Ax;
    }
    else {
      resolved.Ax = 0.0
    }

    if (msg.Ay !== undefined) {
      resolved.Ay = msg.Ay;
    }
    else {
      resolved.Ay = 0.0
    }

    if (msg.Az !== undefined) {
      resolved.Az = msg.Az;
    }
    else {
      resolved.Az = 0.0
    }

    if (msg.Gx !== undefined) {
      resolved.Gx = msg.Gx;
    }
    else {
      resolved.Gx = 0.0
    }

    if (msg.Gy !== undefined) {
      resolved.Gy = msg.Gy;
    }
    else {
      resolved.Gy = 0.0
    }

    if (msg.Gz !== undefined) {
      resolved.Gz = msg.Gz;
    }
    else {
      resolved.Gz = 0.0
    }

    if (msg.Yaw !== undefined) {
      resolved.Yaw = msg.Yaw;
    }
    else {
      resolved.Yaw = 0.0
    }

    return resolved;
    }
};

module.exports = imudata;
