// Auto-generated. Do not edit!

// (in-package hand_gesture_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HandLandmark = require('./HandLandmark.js');

//-----------------------------------------------------------

class HandLandmarks {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.landmarks = null;
    }
    else {
      if (initObj.hasOwnProperty('landmarks')) {
        this.landmarks = initObj.landmarks
      }
      else {
        this.landmarks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HandLandmarks
    // Serialize message field [landmarks]
    // Serialize the length for message field [landmarks]
    bufferOffset = _serializer.uint32(obj.landmarks.length, buffer, bufferOffset);
    obj.landmarks.forEach((val) => {
      bufferOffset = HandLandmark.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HandLandmarks
    let len;
    let data = new HandLandmarks(null);
    // Deserialize message field [landmarks]
    // Deserialize array length for message field [landmarks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.landmarks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.landmarks[i] = HandLandmark.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.landmarks.forEach((val) => {
      length += HandLandmark.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hand_gesture_msgs/HandLandmarks';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f0322f1ef8324746d3ce6a203bcab22';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message represents a set of hand landmarks, each having two coordinates, a number and a name assigned to it (see README.md for more info)
    
    HandLandmark[] landmarks
    ================================================================================
    MSG: hand_gesture_msgs/HandLandmark
    # This message represents a single hand landmark
    
    int32 number  # from 0 to 20
    string name  # see README.md for more info
    float32[] coordinates  # coordinates x and y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HandLandmarks(null);
    if (msg.landmarks !== undefined) {
      resolved.landmarks = new Array(msg.landmarks.length);
      for (let i = 0; i < resolved.landmarks.length; ++i) {
        resolved.landmarks[i] = HandLandmark.Resolve(msg.landmarks[i]);
      }
    }
    else {
      resolved.landmarks = []
    }

    return resolved;
    }
};

module.exports = HandLandmarks;
