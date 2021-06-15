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

class CaResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ca_name = null;
      this.emitter = null;
      this.result = null;
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
      if (initObj.hasOwnProperty('emitter')) {
        this.emitter = initObj.emitter
      }
      else {
        this.emitter = '';
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
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
    // Serializes a message object of type CaResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ca_name]
    bufferOffset = _serializer.string(obj.ca_name, buffer, bufferOffset);
    // Serialize message field [emitter]
    bufferOffset = _serializer.string(obj.emitter, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    // Serialize message field [values]
    // Serialize the length for message field [values]
    bufferOffset = _serializer.uint32(obj.values.length, buffer, bufferOffset);
    obj.values.forEach((val) => {
      bufferOffset = common_msgs.msg.KeyValuePair.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CaResult
    let len;
    let data = new CaResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ca_name]
    data.ca_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [emitter]
    data.emitter = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
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
    length += object.emitter.length;
    length += object.result.length;
    object.values.forEach((val) => {
      length += common_msgs.msg.KeyValuePair.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interaction_msgs/CaResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1fb08cd51b312571456f98845a10c69a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #use standard header
    Header header
    
    string ca_name
    string emitter
    
    #Result of the execution
    string result
    
    #Key-value array: information required by the applications
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
    const resolved = new CaResult(null);
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

    if (msg.emitter !== undefined) {
      resolved.emitter = msg.emitter;
    }
    else {
      resolved.emitter = ''
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
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

module.exports = CaResult;
