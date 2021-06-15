// Auto-generated. Do not edit!

// (in-package hand_gesture_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HandGesture {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num_fingers = null;
      this.gesture = null;
    }
    else {
      if (initObj.hasOwnProperty('num_fingers')) {
        this.num_fingers = initObj.num_fingers
      }
      else {
        this.num_fingers = 0;
      }
      if (initObj.hasOwnProperty('gesture')) {
        this.gesture = initObj.gesture
      }
      else {
        this.gesture = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HandGesture
    // Serialize message field [num_fingers]
    bufferOffset = _serializer.int32(obj.num_fingers, buffer, bufferOffset);
    // Serialize message field [gesture]
    bufferOffset = _serializer.string(obj.gesture, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HandGesture
    let len;
    let data = new HandGesture(null);
    // Deserialize message field [num_fingers]
    data.num_fingers = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gesture]
    data.gesture = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.gesture.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hand_gesture_msgs/HandGesture';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6c2f03cb1294d5c9b939b4f26a1ddd5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message to publish a hand gesture
    
    int32 num_fingers
    string gesture
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HandGesture(null);
    if (msg.num_fingers !== undefined) {
      resolved.num_fingers = msg.num_fingers;
    }
    else {
      resolved.num_fingers = 0
    }

    if (msg.gesture !== undefined) {
      resolved.gesture = msg.gesture;
    }
    else {
      resolved.gesture = ''
    }

    return resolved;
    }
};

module.exports = HandGesture;
