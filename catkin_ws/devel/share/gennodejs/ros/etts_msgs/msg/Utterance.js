// Auto-generated. Do not edit!

// (in-package etts_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Utterance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.text = null;
      this.language = null;
      this.primitive = null;
      this.utteranceIdentifier = null;
      this.emotion = null;
      this.paralinguistic = null;
      this.pitch = null;
      this.prosody_rate = null;
      this.volume = null;
      this.priority = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
      if (initObj.hasOwnProperty('language')) {
        this.language = initObj.language
      }
      else {
        this.language = '';
      }
      if (initObj.hasOwnProperty('primitive')) {
        this.primitive = initObj.primitive
      }
      else {
        this.primitive = 0;
      }
      if (initObj.hasOwnProperty('utteranceIdentifier')) {
        this.utteranceIdentifier = initObj.utteranceIdentifier
      }
      else {
        this.utteranceIdentifier = 0;
      }
      if (initObj.hasOwnProperty('emotion')) {
        this.emotion = initObj.emotion
      }
      else {
        this.emotion = 0;
      }
      if (initObj.hasOwnProperty('paralinguistic')) {
        this.paralinguistic = initObj.paralinguistic
      }
      else {
        this.paralinguistic = 0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0;
      }
      if (initObj.hasOwnProperty('prosody_rate')) {
        this.prosody_rate = initObj.prosody_rate
      }
      else {
        this.prosody_rate = 0.0;
      }
      if (initObj.hasOwnProperty('volume')) {
        this.volume = initObj.volume
      }
      else {
        this.volume = 0;
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Utterance
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    // Serialize message field [language]
    bufferOffset = _serializer.string(obj.language, buffer, bufferOffset);
    // Serialize message field [primitive]
    bufferOffset = _serializer.int16(obj.primitive, buffer, bufferOffset);
    // Serialize message field [utteranceIdentifier]
    bufferOffset = _serializer.int64(obj.utteranceIdentifier, buffer, bufferOffset);
    // Serialize message field [emotion]
    bufferOffset = _serializer.int16(obj.emotion, buffer, bufferOffset);
    // Serialize message field [paralinguistic]
    bufferOffset = _serializer.int16(obj.paralinguistic, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.int16(obj.pitch, buffer, bufferOffset);
    // Serialize message field [prosody_rate]
    bufferOffset = _serializer.float32(obj.prosody_rate, buffer, bufferOffset);
    // Serialize message field [volume]
    bufferOffset = _serializer.int16(obj.volume, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.int16(obj.priority, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Utterance
    let len;
    let data = new Utterance(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [language]
    data.language = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [primitive]
    data.primitive = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [utteranceIdentifier]
    data.utteranceIdentifier = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [emotion]
    data.emotion = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [paralinguistic]
    data.paralinguistic = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [prosody_rate]
    data.prosody_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [volume]
    data.volume = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.text.length;
    length += object.language.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etts_msgs/Utterance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ed088da8fc9f0bef0a7656c5687abdcc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ####
    #### the messages sent to use the ETTS engine, via the topic "etts"
    ####
    #### Apart from the info contained in this kind of message,
    #### these ROS parameters, written by the skill, can be useful for information:
    #### "etts_language" :  for example "es"
    #### "etts_emotion" :   for example "happy"
    #### "etts_primitive" : for example "google"
    #### "etts_volume" : integer in [VOLUME_MIN, VOLUME_MAX]
    #### "etts_queue_size" : for example "2"
    #### "etts_speaking_now" : true or false, set at the beginning and end of each sentence
    #### "etts_current_sentence": the sentence given to the low level primitive, for instance "Hola"
    ####
    #### And the parameters written by the different APIs:
    #### "etts_kidnapped" : for example "" (not kidnapped) or "node_name"
    
    
    ### useful for the stamp
    Header header
    
    ### the real sentence to be said
    # A simple example: text="Hello world, how are you?";
    #
    # -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:
    #    multi-languages support
    #    Example: text="es:hola|en:hi|en:Hello|fr:bonjour";
    #    Multiple instances of a given language are supported,
    #    one of these will be chosen randomly.
    #    Example:  textMultiLanguage="en:Hello|en:Hi|fr:Salut";
    #    if (target_language == LANGUAGE_ENGLISH), will return randomly "Hello" or "Hi"
    #    if (target_language == LANGUAGE_FRENCH), will return "Salut"
    #    (parsing is made in EttsSkill::process_utterance()
    #      -> Translator::_build_given_language_in_multilanguage_line() )
    #
    # -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:
    #    snippets support
    #    Example: text="Yes, \\NLG=OK let us do it";
    #    replace the natural language snippets with their equivalent
    #    (parsing is made in EttsSkill::process_utterance()
    #      -> utterance_utils::replace_natural_langugage_tags() )
    #
    # -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:
    #    metadata tags support
    #    Emotion flags:
    #    Example: text="\emotion=Happy I speak with a happy voice.";
    #    Among "HAPPY", "SAD", "TRANQUILITY", "NERVOUS"
    #    (parsing is made in EttsSkill::process_utterance()
    #      -> EttsSkill::apply_metadata_tags() )
    #
    # -> if using LOQUENDO primitive: additional flags
    #    The Loquendo engine support a number of additional flags.
    #    Example: text="I had... \\pause=500 a complete relooking. \\item=Whistle_01";
    #    These tags are stripped out of the sentence if another engine is used.
    #    (parsing is made in EttsSkill::process_utterance()
    #      -> utterance_utils::strip_metadata_tags() )
    #
    # -> if using NONVERBAL primitive: keys
    #    You must use one of the semantic keys of non_verbal.h:
    #    "SINGING"|"CONFIRMATION"|"THINKING"|"WARNING"|"DIALOG"|"HELLO"|"ERROR"|"AMAZING"
    #    Example: text="SINGING";
    #
    # -> if using  MUSIC_SCORE primitive, use a music score (cf etts_music_score.h)
    #    Example:  text="BPM=85,A6,{},Ab2,C5,1/4-C3";
    #    You can also use a filepath, it must end with ".score".
    #    For example text="/tmp/mymusic.score".
    #    This file must contain a valid music score, for instance "C4,D4,E4,D4,C4"
    #
    # Note that if using NONVERBAL and MUSIC_SCORE,
    #   multi-language, metadata, snippets are not used.
    #   However, the language and the emotion fields of the message are applied as usual.
    string text
    
    ### language domain
    # "en" for english, "es" for spanish, etc.
    # empty ("") for keeping the same language
    string language
    
    # re-use the same primitive that was used in the last sentence
    int16 PRIM_LAST_USED = 0
    # open source, homebrew - does not emit any sound (mute)
    int16 PRIM_NOVOICE = 1
    # open source - based on the Festival project, by the University of Edinburgh
    # http://www.cstr.ed.ac.uk/projects/festival/
    int16 PRIM_FESTIVAL = 2
    # prorietary, webservice - Google TTS webservice, most notably used in Google Translate
    # https://en.wikipedia.org/wiki/Google_Text-to-Speech
    int16 PRIM_GOOGLE = 3
    # prorietary - based on the Loquendo binaries
    # http://www.nuance.com/for-business/customer-service-solutions/loquendo-small-business-bundle/index.htm
    int16 PRIM_LOQUENDO = 4
    # prorietary, webservice - the speech synthesizer developed by Microsoft for its OS
    # https://en.wikipedia.org/wiki/Microsoft_text-to-speech_voices
    int16 PRIM_MICROSOFT = 5
    # open source, homebrew - beep and other sounds
    int16 PRIM_NONVERBAL = 6
    # open source, homebrew - generate music sounds based the music score, written in notes
    int16 PRIM_MUSIC_SCORE = 7
    # open source - based on pico2wave, a small footprint TTS released by SVOX
    # https://en.wikipedia.org/wiki/SVOX
    int16 PRIM_PICO = 8
    # open source - based on the espeak utility, a multi-lingual software speech synthesizer
    # http://espeak.sourceforge.net/
    int16 PRIM_ESPEAK = 9
    # prorietary, webservice - uses the mobile Nuance Mobility webservice
    # http://www.nuance.com/for-business/customer-service-solutions/loquendo-small-business-bundle/index.htm
    int16 PRIM_NUANCE = 10
    # prorietary, webservice - uses the IVONA TTS webservice for developpers
    # http://developer.ivona.com/en/speechcloud/index.html
    int16 PRIM_IVONA = 11
    # prorietary, webservice - AT&T TTS webservice
    # http://www2.research.att.com/~ttsweb/tts/
    int16 PRIM_AT = 12
    # prorietary
    # https://www.readspeaker.com
    int16 PRIM_READSPEAKER = 13
    
    # the wanted low-level voice engine: one of the previous PRIM_*
    # leave empty (PRIM_LAST_USED) for keeping the same primitive
    int16 primitive
    
    
    #The identifier of the utterance in oder to know when the utterance begins and ends.
    #This identifier  could be the miliseconds of the system, in this way it's unequivocal
    #To get the identifier you can use this boost funtion:  boost::posix_time::second_clock::local_time();
    int64 utteranceIdentifier
    
    
    
    int16 EMOTION_LAST_USED = 0
    int16 EMOTION_HAPPY = 1
    int16 EMOTION_SAD = 2
    int16 EMOTION_NEUTRAL = 3
    int16 EMOTION_ANXIOUS = 4
    int16 EMOTION_RELAXED = 5
    int16 EMOTION_ANGRY = 6
    int16 EMOTION_BORED = 7
    int16 EMOTION_SURPRISED = 8
    
    ### the wanted emotion, if supported by the primitive
    # use one of the previous EMOTION_*
    # leave empty (EMOTION_LAST_USED) for keeping the same emotion
    int16 emotion
    
    
    
    ### the parameters that configure the voice (ALPHA VERSION)
    int16 paralinguistic
    int16 pitch
    float32 prosody_rate
    
    
    
    int16 VOLUME_LAST_USED = 0
    int16 VOLUME_MIN = 1
    int16 VOLUME_MAX = 100
    ### the desired volume output, if supported by the primitive
    # volume must be between VOLUME_MIN and VOLUME_MAX
    # leave empty (VOLUME_LAST_USED) for no change
    int16 volume
    
    int16 QUEUE_SENTENCE = 0
    int16 SHUTUP_IMMEDIATLY_AND_SAY_SENTENCE = 1
    int16 SHUTUP_AND_SAY_SENTENCE = 2
    int16 PAUSE = 3
    int16 RESUME = 4
    int16 SPEAK_ONLY_IF_ROBOT_QUIET = 5
    ### by default, queue the sentence and say it when the previous ones have been said.
    #  Use one of the previous orders to change this behaviour.
    #  Note that if using the special instructions PAUSE and RESUME,
    #  all the other fields of the message (including text) are discarded.
    int16 priority
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Utterance(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    if (msg.language !== undefined) {
      resolved.language = msg.language;
    }
    else {
      resolved.language = ''
    }

    if (msg.primitive !== undefined) {
      resolved.primitive = msg.primitive;
    }
    else {
      resolved.primitive = 0
    }

    if (msg.utteranceIdentifier !== undefined) {
      resolved.utteranceIdentifier = msg.utteranceIdentifier;
    }
    else {
      resolved.utteranceIdentifier = 0
    }

    if (msg.emotion !== undefined) {
      resolved.emotion = msg.emotion;
    }
    else {
      resolved.emotion = 0
    }

    if (msg.paralinguistic !== undefined) {
      resolved.paralinguistic = msg.paralinguistic;
    }
    else {
      resolved.paralinguistic = 0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0
    }

    if (msg.prosody_rate !== undefined) {
      resolved.prosody_rate = msg.prosody_rate;
    }
    else {
      resolved.prosody_rate = 0.0
    }

    if (msg.volume !== undefined) {
      resolved.volume = msg.volume;
    }
    else {
      resolved.volume = 0
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    return resolved;
    }
};

// Constants for message
Utterance.Constants = {
  PRIM_LAST_USED: 0,
  PRIM_NOVOICE: 1,
  PRIM_FESTIVAL: 2,
  PRIM_GOOGLE: 3,
  PRIM_LOQUENDO: 4,
  PRIM_MICROSOFT: 5,
  PRIM_NONVERBAL: 6,
  PRIM_MUSIC_SCORE: 7,
  PRIM_PICO: 8,
  PRIM_ESPEAK: 9,
  PRIM_NUANCE: 10,
  PRIM_IVONA: 11,
  PRIM_AT: 12,
  PRIM_READSPEAKER: 13,
  EMOTION_LAST_USED: 0,
  EMOTION_HAPPY: 1,
  EMOTION_SAD: 2,
  EMOTION_NEUTRAL: 3,
  EMOTION_ANXIOUS: 4,
  EMOTION_RELAXED: 5,
  EMOTION_ANGRY: 6,
  EMOTION_BORED: 7,
  EMOTION_SURPRISED: 8,
  VOLUME_LAST_USED: 0,
  VOLUME_MIN: 1,
  VOLUME_MAX: 100,
  QUEUE_SENTENCE: 0,
  SHUTUP_IMMEDIATLY_AND_SAY_SENTENCE: 1,
  SHUTUP_AND_SAY_SENTENCE: 2,
  PAUSE: 3,
  RESUME: 4,
  SPEAK_ONLY_IF_ROBOT_QUIET: 5,
}

module.exports = Utterance;
