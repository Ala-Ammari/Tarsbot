// Auto-generated. Do not edit!

// (in-package diffbot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PID {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.kp = null;
      this.ki = null;
      this.kd = null;
    }
    else {
      if (initObj.hasOwnProperty('kp')) {
        this.kp = initObj.kp
      }
      else {
        this.kp = 0.0;
      }
      if (initObj.hasOwnProperty('ki')) {
        this.ki = initObj.ki
      }
      else {
        this.ki = 0.0;
      }
      if (initObj.hasOwnProperty('kd')) {
        this.kd = initObj.kd
      }
      else {
        this.kd = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PID
    // Serialize message field [kp]
    bufferOffset = _serializer.float32(obj.kp, buffer, bufferOffset);
    // Serialize message field [ki]
    bufferOffset = _serializer.float32(obj.ki, buffer, bufferOffset);
    // Serialize message field [kd]
    bufferOffset = _serializer.float32(obj.kd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PID
    let len;
    let data = new PID(null);
    // Deserialize message field [kp]
    data.kp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ki]
    data.ki = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [kd]
    data.kd = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'diffbot_msgs/PID';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08d0ca1f582560895ecba909de1d88ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This is a message to hold the PID tuning values
    # Required only for the low level rosserial base_controller
    # because rosserial doesn't support dynamic reconfigure
    float32 kp
    float32 ki
    float32 kd
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PID(null);
    if (msg.kp !== undefined) {
      resolved.kp = msg.kp;
    }
    else {
      resolved.kp = 0.0
    }

    if (msg.ki !== undefined) {
      resolved.ki = msg.ki;
    }
    else {
      resolved.ki = 0.0
    }

    if (msg.kd !== undefined) {
      resolved.kd = msg.kd;
    }
    else {
      resolved.kd = 0.0
    }

    return resolved;
    }
};

module.exports = PID;
