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

class Expression {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.when = null;
      this.id = null;
      this.emitter = null;
      this.priority = null;
      this.params = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('when')) {
        this.when = initObj.when
      }
      else {
        this.when = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
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
      if (initObj.hasOwnProperty('params')) {
        this.params = initObj.params
      }
      else {
        this.params = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Expression
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [when]
    bufferOffset = _serializer.string(obj.when, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [emitter]
    bufferOffset = _serializer.string(obj.emitter, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.uint16(obj.priority, buffer, bufferOffset);
    // Serialize message field [params]
    // Serialize the length for message field [params]
    bufferOffset = _serializer.uint32(obj.params.length, buffer, bufferOffset);
    obj.params.forEach((val) => {
      bufferOffset = common_msgs.msg.KeyValuePair.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Expression
    let len;
    let data = new Expression(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [when]
    data.when = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [emitter]
    data.emitter = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [params]
    // Deserialize array length for message field [params]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.params = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.params[i] = common_msgs.msg.KeyValuePair.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.name.length;
    length += object.when.length;
    length += object.id.length;
    length += object.emitter.length;
    object.params.forEach((val) => {
      length += common_msgs.msg.KeyValuePair.getMessageSize(val);
    });
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interaction_msgs/Expression';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b45886ecb263f01c638736c2ca6ee2e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string name
    string when
    string id
    string emitter
    
    uint16 LOW_PRIORITY = 0
    uint16 MEDIUM_PRIORITY = 1
    uint16 HIGH_PRIORITY = 2
    
    #priority level
    uint16 priority
    
    common_msgs/KeyValuePair[] params
     
    
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
    const resolved = new Expression(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.when !== undefined) {
      resolved.when = msg.when;
    }
    else {
      resolved.when = ''
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
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

    if (msg.params !== undefined) {
      resolved.params = new Array(msg.params.length);
      for (let i = 0; i < resolved.params.length; ++i) {
        resolved.params[i] = common_msgs.msg.KeyValuePair.Resolve(msg.params[i]);
      }
    }
    else {
      resolved.params = []
    }

    return resolved;
    }
};

// Constants for message
Expression.Constants = {
  LOW_PRIORITY: 0,
  MEDIUM_PRIORITY: 1,
  HIGH_PRIORITY: 2,
}

module.exports = Expression;
