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

class HandLandmark {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.number = null;
      this.name = null;
      this.coordinates = null;
    }
    else {
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('coordinates')) {
        this.coordinates = initObj.coordinates
      }
      else {
        this.coordinates = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HandLandmark
    // Serialize message field [number]
    bufferOffset = _serializer.int32(obj.number, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [coordinates]
    bufferOffset = _arraySerializer.float32(obj.coordinates, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HandLandmark
    let len;
    let data = new HandLandmark(null);
    // Deserialize message field [number]
    data.number = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [coordinates]
    data.coordinates = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += 4 * object.coordinates.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hand_gesture_msgs/HandLandmark';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af09f7d0e0a50b4df9d66c15e2f8a9e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new HandLandmark(null);
    if (msg.number !== undefined) {
      resolved.number = msg.number;
    }
    else {
      resolved.number = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.coordinates !== undefined) {
      resolved.coordinates = msg.coordinates;
    }
    else {
      resolved.coordinates = []
    }

    return resolved;
    }
};

module.exports = HandLandmark;
