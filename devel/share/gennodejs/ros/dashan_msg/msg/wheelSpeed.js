// Auto-generated. Do not edit!

// (in-package dashan_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class wheelSpeed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.leftwheel_speed = null;
      this.rightwheel_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('leftwheel_speed')) {
        this.leftwheel_speed = initObj.leftwheel_speed
      }
      else {
        this.leftwheel_speed = 0.0;
      }
      if (initObj.hasOwnProperty('rightwheel_speed')) {
        this.rightwheel_speed = initObj.rightwheel_speed
      }
      else {
        this.rightwheel_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wheelSpeed
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [leftwheel_speed]
    bufferOffset = _serializer.float32(obj.leftwheel_speed, buffer, bufferOffset);
    // Serialize message field [rightwheel_speed]
    bufferOffset = _serializer.float32(obj.rightwheel_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wheelSpeed
    let len;
    let data = new wheelSpeed(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [leftwheel_speed]
    data.leftwheel_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rightwheel_speed]
    data.rightwheel_speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dashan_msg/wheelSpeed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9f5bb93b9ab85fa68f61bf838b71299';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    Header header 
    float32 leftwheel_speed
    float32 rightwheel_speed
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new wheelSpeed(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.leftwheel_speed !== undefined) {
      resolved.leftwheel_speed = msg.leftwheel_speed;
    }
    else {
      resolved.leftwheel_speed = 0.0
    }

    if (msg.rightwheel_speed !== undefined) {
      resolved.rightwheel_speed = msg.rightwheel_speed;
    }
    else {
      resolved.rightwheel_speed = 0.0
    }

    return resolved;
    }
};

module.exports = wheelSpeed;
