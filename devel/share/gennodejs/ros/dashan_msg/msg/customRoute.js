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

class customRoute {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pointIndexes = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('pointIndexes')) {
        this.pointIndexes = initObj.pointIndexes
      }
      else {
        this.pointIndexes = [];
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type customRoute
    // Serialize message field [pointIndexes]
    bufferOffset = _arraySerializer.uint32(obj.pointIndexes, buffer, bufferOffset, null);
    // Serialize message field [length]
    bufferOffset = _serializer.uint8(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type customRoute
    let len;
    let data = new customRoute(null);
    // Deserialize message field [pointIndexes]
    data.pointIndexes = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [length]
    data.length = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pointIndexes.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dashan_msg/customRoute';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd188738b8b3c860e29d2f4955ba5b012';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #record robot new route that contains a sequence of points; the data is the index of point
    uint32[] pointIndexes
    uint8 length
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new customRoute(null);
    if (msg.pointIndexes !== undefined) {
      resolved.pointIndexes = msg.pointIndexes;
    }
    else {
      resolved.pointIndexes = []
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    return resolved;
    }
};

module.exports = customRoute;
