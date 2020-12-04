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

class zhishancmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.zhishanCommand = null;
      this.autoCharge = null;
      this.rodControl = null;
      this.zhishanPara = null;
      this.zhishanVoice = null;
    }
    else {
      if (initObj.hasOwnProperty('zhishanCommand')) {
        this.zhishanCommand = initObj.zhishanCommand
      }
      else {
        this.zhishanCommand = 0;
      }
      if (initObj.hasOwnProperty('autoCharge')) {
        this.autoCharge = initObj.autoCharge
      }
      else {
        this.autoCharge = 0;
      }
      if (initObj.hasOwnProperty('rodControl')) {
        this.rodControl = initObj.rodControl
      }
      else {
        this.rodControl = 0;
      }
      if (initObj.hasOwnProperty('zhishanPara')) {
        this.zhishanPara = initObj.zhishanPara
      }
      else {
        this.zhishanPara = 0;
      }
      if (initObj.hasOwnProperty('zhishanVoice')) {
        this.zhishanVoice = initObj.zhishanVoice
      }
      else {
        this.zhishanVoice = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type zhishancmd
    // Serialize message field [zhishanCommand]
    bufferOffset = _serializer.uint8(obj.zhishanCommand, buffer, bufferOffset);
    // Serialize message field [autoCharge]
    bufferOffset = _serializer.uint8(obj.autoCharge, buffer, bufferOffset);
    // Serialize message field [rodControl]
    bufferOffset = _serializer.uint8(obj.rodControl, buffer, bufferOffset);
    // Serialize message field [zhishanPara]
    bufferOffset = _serializer.uint8(obj.zhishanPara, buffer, bufferOffset);
    // Serialize message field [zhishanVoice]
    bufferOffset = _serializer.uint8(obj.zhishanVoice, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type zhishancmd
    let len;
    let data = new zhishancmd(null);
    // Deserialize message field [zhishanCommand]
    data.zhishanCommand = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [autoCharge]
    data.autoCharge = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rodControl]
    data.rodControl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [zhishanPara]
    data.zhishanPara = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [zhishanVoice]
    data.zhishanVoice = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dashan_msg/zhishancmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '071fca3f528f7a18348853a91c078ea6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #1:save init position 2:save goal position
    #3:navigation goals 4:commision release
    #5:save call position 6:one key call
    #7：set init position 8：voice
    #9：clear navigation goals in yaml
    #10: turn voice 
    #11:touch screen
    #12:miaozhun
    #13:shutdown
    #14:reboot
    #15:turn left
    #16:start run after speaking finished,receive from other node,jixuqianjin
    #17:start speak,send to other node
    #18:patrol is finished
    #19:yuan di deng dai
    #20：dance
    #21:turn right
    #22：select one point and generate four directions points
    uint8 zhishanCommand
    #1:auto charge 2:charge finish 3:send command to serial to prepare charge
    uint8 autoCharge
    #1: rise 2:fall 3:head turn left 4:head turn right 5:arm up 6:arm down 7:dance 8：stop dance
    uint8 rodControl
    # reserve to use 
    # voice8 1：interact 2：play mode 3:play voice 4：interupt 5:patrol and play
    # 6:stop play image after voice is finished 7:patrol and speak
    # turn voice 10: 1:up 2:down
    # touch screen11：1:enable 2:disable
    # turn15and21: the number of PI/4 
    uint8 zhishanPara
    # voice
    # zhishanCommand 8：voice 5:patrol and play zhishanVoice = number
    uint8 zhishanVoice
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new zhishancmd(null);
    if (msg.zhishanCommand !== undefined) {
      resolved.zhishanCommand = msg.zhishanCommand;
    }
    else {
      resolved.zhishanCommand = 0
    }

    if (msg.autoCharge !== undefined) {
      resolved.autoCharge = msg.autoCharge;
    }
    else {
      resolved.autoCharge = 0
    }

    if (msg.rodControl !== undefined) {
      resolved.rodControl = msg.rodControl;
    }
    else {
      resolved.rodControl = 0
    }

    if (msg.zhishanPara !== undefined) {
      resolved.zhishanPara = msg.zhishanPara;
    }
    else {
      resolved.zhishanPara = 0
    }

    if (msg.zhishanVoice !== undefined) {
      resolved.zhishanVoice = msg.zhishanVoice;
    }
    else {
      resolved.zhishanVoice = 0
    }

    return resolved;
    }
};

module.exports = zhishancmd;
