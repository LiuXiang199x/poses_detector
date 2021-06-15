// Auto-generated. Do not edit!

// (in-package android_skill.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AndroidFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.app_status = null;
      this.percentage_completed = null;
      this.engagement = null;
    }
    else {
      if (initObj.hasOwnProperty('app_status')) {
        this.app_status = initObj.app_status
      }
      else {
        this.app_status = '';
      }
      if (initObj.hasOwnProperty('percentage_completed')) {
        this.percentage_completed = initObj.percentage_completed
      }
      else {
        this.percentage_completed = 0;
      }
      if (initObj.hasOwnProperty('engagement')) {
        this.engagement = initObj.engagement
      }
      else {
        this.engagement = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AndroidFeedback
    // Serialize message field [app_status]
    bufferOffset = _serializer.string(obj.app_status, buffer, bufferOffset);
    // Serialize message field [percentage_completed]
    bufferOffset = _serializer.uint8(obj.percentage_completed, buffer, bufferOffset);
    // Serialize message field [engagement]
    bufferOffset = _serializer.bool(obj.engagement, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AndroidFeedback
    let len;
    let data = new AndroidFeedback(null);
    // Deserialize message field [app_status]
    data.app_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [percentage_completed]
    data.percentage_completed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [engagement]
    data.engagement = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.app_status.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'android_skill/AndroidFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dae6119bde17e0325e6052cc5fd30b90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback
    string app_status
    uint8 percentage_completed
    bool engagement
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AndroidFeedback(null);
    if (msg.app_status !== undefined) {
      resolved.app_status = msg.app_status;
    }
    else {
      resolved.app_status = ''
    }

    if (msg.percentage_completed !== undefined) {
      resolved.percentage_completed = msg.percentage_completed;
    }
    else {
      resolved.percentage_completed = 0
    }

    if (msg.engagement !== undefined) {
      resolved.engagement = msg.engagement;
    }
    else {
      resolved.engagement = false
    }

    return resolved;
    }
};

module.exports = AndroidFeedback;
