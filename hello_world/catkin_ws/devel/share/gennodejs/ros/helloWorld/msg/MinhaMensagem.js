// Auto-generated. Do not edit!

// (in-package helloWorld.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MinhaMensagem {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.primeiroInteiro = null;
      this.segundoInteiro = null;
      this.texto = null;
    }
    else {
      if (initObj.hasOwnProperty('primeiroInteiro')) {
        this.primeiroInteiro = initObj.primeiroInteiro
      }
      else {
        this.primeiroInteiro = 0;
      }
      if (initObj.hasOwnProperty('segundoInteiro')) {
        this.segundoInteiro = initObj.segundoInteiro
      }
      else {
        this.segundoInteiro = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('texto')) {
        this.texto = initObj.texto
      }
      else {
        this.texto = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MinhaMensagem
    // Serialize message field [primeiroInteiro]
    bufferOffset = _serializer.int32(obj.primeiroInteiro, buffer, bufferOffset);
    // Serialize message field [segundoInteiro]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.segundoInteiro, buffer, bufferOffset);
    // Serialize message field [texto]
    bufferOffset = _serializer.string(obj.texto, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MinhaMensagem
    let len;
    let data = new MinhaMensagem(null);
    // Deserialize message field [primeiroInteiro]
    data.primeiroInteiro = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [segundoInteiro]
    data.segundoInteiro = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [texto]
    data.texto = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.texto);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'helloWorld/MinhaMensagem';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80fc205c8bdb1be64b2141852ee2a48c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Mensagem de teste para o Tutorial de ROS do Toschi
    #O objetivo da vida (e dessa mensagem) é ser feliz
    
    int32 primeiroInteiro
    #Inteiro de tipo primitivo
    
    std_msgs/Int32 segundoInteiro
    #Inteiro usando uma mensagem pré-pronta
    
    string texto
    #Texto de tipo primitivo
    
    
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MinhaMensagem(null);
    if (msg.primeiroInteiro !== undefined) {
      resolved.primeiroInteiro = msg.primeiroInteiro;
    }
    else {
      resolved.primeiroInteiro = 0
    }

    if (msg.segundoInteiro !== undefined) {
      resolved.segundoInteiro = std_msgs.msg.Int32.Resolve(msg.segundoInteiro)
    }
    else {
      resolved.segundoInteiro = new std_msgs.msg.Int32()
    }

    if (msg.texto !== undefined) {
      resolved.texto = msg.texto;
    }
    else {
      resolved.texto = ''
    }

    return resolved;
    }
};

module.exports = MinhaMensagem;
