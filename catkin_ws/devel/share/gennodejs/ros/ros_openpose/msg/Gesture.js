// Auto-generated. Do not edit!

// (in-package ros_openpose.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Gesture {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lefthand = null;
      this.righthand = null;
      this.body = null;
    }
    else {
      if (initObj.hasOwnProperty('lefthand')) {
        this.lefthand = initObj.lefthand
      }
      else {
        this.lefthand = '';
      }
      if (initObj.hasOwnProperty('righthand')) {
        this.righthand = initObj.righthand
      }
      else {
        this.righthand = '';
      }
      if (initObj.hasOwnProperty('body')) {
        this.body = initObj.body
      }
      else {
        this.body = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gesture
    // Serialize message field [lefthand]
    bufferOffset = _serializer.string(obj.lefthand, buffer, bufferOffset);
    // Serialize message field [righthand]
    bufferOffset = _serializer.string(obj.righthand, buffer, bufferOffset);
    // Serialize message field [body]
    bufferOffset = _serializer.string(obj.body, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gesture
    let len;
    let data = new Gesture(null);
    // Deserialize message field [lefthand]
    data.lefthand = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [righthand]
    data.righthand = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [body]
    data.body = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.lefthand.length;
    length += object.righthand.length;
    length += object.body.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_openpose/Gesture';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd533947e2ddb7675745edef8ae88c25';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string lefthand
    string righthand
    string body
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Gesture(null);
    if (msg.lefthand !== undefined) {
      resolved.lefthand = msg.lefthand;
    }
    else {
      resolved.lefthand = ''
    }

    if (msg.righthand !== undefined) {
      resolved.righthand = msg.righthand;
    }
    else {
      resolved.righthand = ''
    }

    if (msg.body !== undefined) {
      resolved.body = msg.body;
    }
    else {
      resolved.body = ''
    }

    return resolved;
    }
};

module.exports = Gesture;
