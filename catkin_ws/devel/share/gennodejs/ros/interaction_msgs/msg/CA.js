// Auto-generated. Do not edit!

// (in-package interaction_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let common_msgs = _finder('common_msgs');

//-----------------------------------------------------------

class CA {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ca_name = null;
      this.type = null;
      this.emitter = null;
      this.priority = null;
      this.duration = null;
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ca_name')) {
        this.ca_name = initObj.ca_name
      }
      else {
        this.ca_name = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('emitter')) {
        this.emitter = initObj.emitter
      }
      else {
        this.emitter = '';
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0;
      }
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CA
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ca_name]
    bufferOffset = _serializer.string(obj.ca_name, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [emitter]
    bufferOffset = _serializer.string(obj.emitter, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.uint16(obj.priority, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.uint16(obj.duration, buffer, bufferOffset);
    // Serialize message field [values]
    // Serialize the length for message field [values]
    bufferOffset = _serializer.uint32(obj.values.length, buffer, bufferOffset);
    obj.values.forEach((val) => {
      bufferOffset = common_msgs.msg.KeyValuePair.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CA
    let len;
    let data = new CA(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ca_name]
    data.ca_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [emitter]
    data.emitter = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [values]
    // Deserialize array length for message field [values]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.values = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.values[i] = common_msgs.msg.KeyValuePair.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.ca_name.length;
    length += object.type.length;
    length += object.emitter.length;
    object.values.forEach((val) => {
      length += common_msgs.msg.KeyValuePair.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interaction_msgs/CA';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58e6b2538ab1900bae6b4b2cbe8c5273';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #use standard header
    Header header
    
    string ca_name
    string type
    string emitter
    
    uint16 LOW_PRIORITY = 0
    uint16 MEDIUM_PRIORITY = 1
    uint16 HIGH_PRIORITY = 2
    
    #priority level
    uint16 priority
    
    #duration of the CA
    uint16 duration
    
    #Key-value array: ca specific fields
    common_msgs/KeyValuePair[] values
    
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
    
    ================================================================================
    MSG: common_msgs/KeyValuePair
    #use standard header
    #Header header
    
    #string values for key and its value
    string key
    string value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CA(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ca_name !== undefined) {
      resolved.ca_name = msg.ca_name;
    }
    else {
      resolved.ca_name = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.emitter !== undefined) {
      resolved.emitter = msg.emitter;
    }
    else {
      resolved.emitter = ''
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0
    }

    if (msg.values !== undefined) {
      resolved.values = new Array(msg.values.length);
      for (let i = 0; i < resolved.values.length; ++i) {
        resolved.values[i] = common_msgs.msg.KeyValuePair.Resolve(msg.values[i]);
      }
    }
    else {
      resolved.values = []
    }

    return resolved;
    }
};

// Constants for message
CA.Constants = {
  LOW_PRIORITY: 0,
  MEDIUM_PRIORITY: 1,
  HIGH_PRIORITY: 2,
}

module.exports = CA;
