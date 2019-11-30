// Auto-generated. Do not edit!

// (in-package vector_drive.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class thrusterPercents {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.t1 = null;
      this.t2 = null;
      this.t3 = null;
      this.t4 = null;
    }
    else {
      if (initObj.hasOwnProperty('t1')) {
        this.t1 = initObj.t1
      }
      else {
        this.t1 = 0;
      }
      if (initObj.hasOwnProperty('t2')) {
        this.t2 = initObj.t2
      }
      else {
        this.t2 = 0;
      }
      if (initObj.hasOwnProperty('t3')) {
        this.t3 = initObj.t3
      }
      else {
        this.t3 = 0;
      }
      if (initObj.hasOwnProperty('t4')) {
        this.t4 = initObj.t4
      }
      else {
        this.t4 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type thrusterPercents
    // Serialize message field [t1]
    bufferOffset = _serializer.int32(obj.t1, buffer, bufferOffset);
    // Serialize message field [t2]
    bufferOffset = _serializer.int32(obj.t2, buffer, bufferOffset);
    // Serialize message field [t3]
    bufferOffset = _serializer.int32(obj.t3, buffer, bufferOffset);
    // Serialize message field [t4]
    bufferOffset = _serializer.int32(obj.t4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type thrusterPercents
    let len;
    let data = new thrusterPercents(null);
    // Deserialize message field [t1]
    data.t1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [t2]
    data.t2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [t3]
    data.t3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [t4]
    data.t4 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vector_drive/thrusterPercents';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7d0e7700b4cbc9f7f9261f014f60680';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 t1
    int32 t2
    int32 t3
    int32 t4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new thrusterPercents(null);
    if (msg.t1 !== undefined) {
      resolved.t1 = msg.t1;
    }
    else {
      resolved.t1 = 0
    }

    if (msg.t2 !== undefined) {
      resolved.t2 = msg.t2;
    }
    else {
      resolved.t2 = 0
    }

    if (msg.t3 !== undefined) {
      resolved.t3 = msg.t3;
    }
    else {
      resolved.t3 = 0
    }

    if (msg.t4 !== undefined) {
      resolved.t4 = msg.t4;
    }
    else {
      resolved.t4 = 0
    }

    return resolved;
    }
};

module.exports = thrusterPercents;
