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

class ribbontask {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
      this.senderip = null;
      this.from = null;
      this.taskid = null;
      this.routeid = null;
      this.pointid = null;
      this.size = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
      if (initObj.hasOwnProperty('senderip')) {
        this.senderip = initObj.senderip
      }
      else {
        this.senderip = '';
      }
      if (initObj.hasOwnProperty('from')) {
        this.from = initObj.from
      }
      else {
        this.from = 0;
      }
      if (initObj.hasOwnProperty('taskid')) {
        this.taskid = initObj.taskid
      }
      else {
        this.taskid = '';
      }
      if (initObj.hasOwnProperty('routeid')) {
        this.routeid = initObj.routeid
      }
      else {
        this.routeid = 0;
      }
      if (initObj.hasOwnProperty('pointid')) {
        this.pointid = initObj.pointid
      }
      else {
        this.pointid = [];
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ribbontask
    // Serialize message field [cmd]
    bufferOffset = _serializer.uint8(obj.cmd, buffer, bufferOffset);
    // Serialize message field [senderip]
    bufferOffset = _serializer.string(obj.senderip, buffer, bufferOffset);
    // Serialize message field [from]
    bufferOffset = _serializer.uint8(obj.from, buffer, bufferOffset);
    // Serialize message field [taskid]
    bufferOffset = _serializer.string(obj.taskid, buffer, bufferOffset);
    // Serialize message field [routeid]
    bufferOffset = _serializer.int32(obj.routeid, buffer, bufferOffset);
    // Serialize message field [pointid]
    bufferOffset = _arraySerializer.int32(obj.pointid, buffer, bufferOffset, null);
    // Serialize message field [size]
    bufferOffset = _serializer.uint8(obj.size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ribbontask
    let len;
    let data = new ribbontask(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [senderip]
    data.senderip = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [from]
    data.from = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [taskid]
    data.taskid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [routeid]
    data.routeid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pointid]
    data.pointid = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [size]
    data.size = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.senderip.length;
    length += object.taskid.length;
    length += 4 * object.pointid.length;
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dashan_msg/ribbontask';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5baa3f4faea623af8de2b30e03625db3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #req task 1; release task 2
    uint8 cmd
    #senderip
    string senderip
    #from dc or pda
    uint8 from
    #task uuid
    string taskid
    #route id
    int32 routeid
    #pointid of task 
    int32[] pointid
    uint8 size
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ribbontask(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    if (msg.senderip !== undefined) {
      resolved.senderip = msg.senderip;
    }
    else {
      resolved.senderip = ''
    }

    if (msg.from !== undefined) {
      resolved.from = msg.from;
    }
    else {
      resolved.from = 0
    }

    if (msg.taskid !== undefined) {
      resolved.taskid = msg.taskid;
    }
    else {
      resolved.taskid = ''
    }

    if (msg.routeid !== undefined) {
      resolved.routeid = msg.routeid;
    }
    else {
      resolved.routeid = 0
    }

    if (msg.pointid !== undefined) {
      resolved.pointid = msg.pointid;
    }
    else {
      resolved.pointid = []
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    return resolved;
    }
};

module.exports = ribbontask;
