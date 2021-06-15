; Auto-generated. Do not edit!


(cl:in-package etts_msgs-msg)


;//! \htmlinclude Utterance.msg.html

(cl:defclass <Utterance> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (language
    :reader language
    :initarg :language
    :type cl:string
    :initform "")
   (primitive
    :reader primitive
    :initarg :primitive
    :type cl:fixnum
    :initform 0)
   (utteranceIdentifier
    :reader utteranceIdentifier
    :initarg :utteranceIdentifier
    :type cl:integer
    :initform 0)
   (emotion
    :reader emotion
    :initarg :emotion
    :type cl:fixnum
    :initform 0)
   (paralinguistic
    :reader paralinguistic
    :initarg :paralinguistic
    :type cl:fixnum
    :initform 0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:fixnum
    :initform 0)
   (prosody_rate
    :reader prosody_rate
    :initarg :prosody_rate
    :type cl:float
    :initform 0.0)
   (volume
    :reader volume
    :initarg :volume
    :type cl:fixnum
    :initform 0)
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Utterance (<Utterance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Utterance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Utterance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etts_msgs-msg:<Utterance> is deprecated: use etts_msgs-msg:Utterance instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Utterance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etts_msgs-msg:header-val is deprecated.  Use etts_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <Utterance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etts_msgs-msg:text-val is deprecated.  Use etts_msgs-msg:text instead.")
  (text m))

(cl:ensure-generic-function 'language-val :lambda-list '(m))
(cl:defmethod language-val ((m <Utterance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etts_msgs-msg:language-val is deprecated.  Use etts_msgs-msg:language instead.")
  (language m))

(cl:ensure-generic-function 'primitive-val :lambda-list '(m))
(cl:defmethod primitive-val ((m <Utterance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etts_msgs-msg:primitive-val is deprecated.  Use etts_msgs-msg:primitive instead.")
  (primitive m))

(cl:ensure-generic-function 'utteranceIdentifier-val :lambda-list '(m))
(cl:defmethod utteranceIdentifier-val ((m <Utterance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etts_msgs-msg:utteranceIdentifier-val is deprecated.  Use etts_msgs-msg:utteranceIdentifier instead.")
  (utteranceIdentifier m))

(cl:ensure-generic-function 'emotion-val :lambda-list '(m))
(cl:defmethod emotion-val ((m <Utterance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etts_msgs-msg:emotion-val is deprecated.  Use etts_msgs-msg:emotion instead.")
  (emotion m))

(cl:ensure-generic-function 'paralinguistic-val :lambda-list '(m))
(cl:defmethod paralinguistic-val ((m <Utterance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etts_msgs-msg:paralinguistic-val is deprecated.  Use etts_msgs-msg:paralinguistic instead.")
  (paralinguistic m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <Utterance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etts_msgs-msg:pitch-val is deprecated.  Use etts_msgs-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'prosody_rate-val :lambda-list '(m))
(cl:defmethod prosody_rate-val ((m <Utterance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etts_msgs-msg:prosody_rate-val is deprecated.  Use etts_msgs-msg:prosody_rate instead.")
  (prosody_rate m))

(cl:ensure-generic-function 'volume-val :lambda-list '(m))
(cl:defmethod volume-val ((m <Utterance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etts_msgs-msg:volume-val is deprecated.  Use etts_msgs-msg:volume instead.")
  (volume m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <Utterance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etts_msgs-msg:priority-val is deprecated.  Use etts_msgs-msg:priority instead.")
  (priority m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Utterance>)))
    "Constants for message type '<Utterance>"
  '((:PRIM_LAST_USED . 0)
    (:PRIM_NOVOICE . 1)
    (:PRIM_FESTIVAL . 2)
    (:PRIM_GOOGLE . 3)
    (:PRIM_LOQUENDO . 4)
    (:PRIM_MICROSOFT . 5)
    (:PRIM_NONVERBAL . 6)
    (:PRIM_MUSIC_SCORE . 7)
    (:PRIM_PICO . 8)
    (:PRIM_ESPEAK . 9)
    (:PRIM_NUANCE . 10)
    (:PRIM_IVONA . 11)
    (:PRIM_AT . 12)
    (:PRIM_READSPEAKER . 13)
    (:EMOTION_LAST_USED . 0)
    (:EMOTION_HAPPY . 1)
    (:EMOTION_SAD . 2)
    (:EMOTION_NEUTRAL . 3)
    (:EMOTION_ANXIOUS . 4)
    (:EMOTION_RELAXED . 5)
    (:EMOTION_ANGRY . 6)
    (:EMOTION_BORED . 7)
    (:EMOTION_SURPRISED . 8)
    (:VOLUME_LAST_USED . 0)
    (:VOLUME_MIN . 1)
    (:VOLUME_MAX . 100)
    (:QUEUE_SENTENCE . 0)
    (:SHUTUP_IMMEDIATLY_AND_SAY_SENTENCE . 1)
    (:SHUTUP_AND_SAY_SENTENCE . 2)
    (:PAUSE . 3)
    (:RESUME . 4)
    (:SPEAK_ONLY_IF_ROBOT_QUIET . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Utterance)))
    "Constants for message type 'Utterance"
  '((:PRIM_LAST_USED . 0)
    (:PRIM_NOVOICE . 1)
    (:PRIM_FESTIVAL . 2)
    (:PRIM_GOOGLE . 3)
    (:PRIM_LOQUENDO . 4)
    (:PRIM_MICROSOFT . 5)
    (:PRIM_NONVERBAL . 6)
    (:PRIM_MUSIC_SCORE . 7)
    (:PRIM_PICO . 8)
    (:PRIM_ESPEAK . 9)
    (:PRIM_NUANCE . 10)
    (:PRIM_IVONA . 11)
    (:PRIM_AT . 12)
    (:PRIM_READSPEAKER . 13)
    (:EMOTION_LAST_USED . 0)
    (:EMOTION_HAPPY . 1)
    (:EMOTION_SAD . 2)
    (:EMOTION_NEUTRAL . 3)
    (:EMOTION_ANXIOUS . 4)
    (:EMOTION_RELAXED . 5)
    (:EMOTION_ANGRY . 6)
    (:EMOTION_BORED . 7)
    (:EMOTION_SURPRISED . 8)
    (:VOLUME_LAST_USED . 0)
    (:VOLUME_MIN . 1)
    (:VOLUME_MAX . 100)
    (:QUEUE_SENTENCE . 0)
    (:SHUTUP_IMMEDIATLY_AND_SAY_SENTENCE . 1)
    (:SHUTUP_AND_SAY_SENTENCE . 2)
    (:PAUSE . 3)
    (:RESUME . 4)
    (:SPEAK_ONLY_IF_ROBOT_QUIET . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Utterance>) ostream)
  "Serializes a message object of type '<Utterance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'language))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'language))
  (cl:let* ((signed (cl:slot-value msg 'primitive)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'utteranceIdentifier)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'emotion)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'paralinguistic)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pitch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'prosody_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'volume)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'priority)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Utterance>) istream)
  "Deserializes a message object of type '<Utterance>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'language) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'language) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'primitive) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'utteranceIdentifier) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'emotion) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'paralinguistic) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pitch) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prosody_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'volume) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'priority) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Utterance>)))
  "Returns string type for a message object of type '<Utterance>"
  "etts_msgs/Utterance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Utterance)))
  "Returns string type for a message object of type 'Utterance"
  "etts_msgs/Utterance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Utterance>)))
  "Returns md5sum for a message object of type '<Utterance>"
  "ed088da8fc9f0bef0a7656c5687abdcc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Utterance)))
  "Returns md5sum for a message object of type 'Utterance"
  "ed088da8fc9f0bef0a7656c5687abdcc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Utterance>)))
  "Returns full string definition for message of type '<Utterance>"
  (cl:format cl:nil "####~%#### the messages sent to use the ETTS engine, via the topic \"etts\"~%####~%#### Apart from the info contained in this kind of message,~%#### these ROS parameters, written by the skill, can be useful for information:~%#### \"etts_language\" :  for example \"es\"~%#### \"etts_emotion\" :   for example \"happy\"~%#### \"etts_primitive\" : for example \"google\"~%#### \"etts_volume\" : integer in [VOLUME_MIN, VOLUME_MAX]~%#### \"etts_queue_size\" : for example \"2\"~%#### \"etts_speaking_now\" : true or false, set at the beginning and end of each sentence~%#### \"etts_current_sentence\": the sentence given to the low level primitive, for instance \"Hola\"~%####~%#### And the parameters written by the different APIs:~%#### \"etts_kidnapped\" : for example \"\" (not kidnapped) or \"node_name\"~%~%~%### useful for the stamp~%Header header~%~%### the real sentence to be said~%# A simple example: text=\"Hello world, how are you?\";~%#~%# -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:~%#    multi-languages support~%#    Example: text=\"es:hola|en:hi|en:Hello|fr:bonjour\";~%#    Multiple instances of a given language are supported,~%#    one of these will be chosen randomly.~%#    Example:  textMultiLanguage=\"en:Hello|en:Hi|fr:Salut\";~%#    if (target_language == LANGUAGE_ENGLISH), will return randomly \"Hello\" or \"Hi\"~%#    if (target_language == LANGUAGE_FRENCH), will return \"Salut\"~%#    (parsing is made in EttsSkill::process_utterance()~%#      -> Translator::_build_given_language_in_multilanguage_line() )~%#~%# -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:~%#    snippets support~%#    Example: text=\"Yes, \\\\NLG=OK let us do it\";~%#    replace the natural language snippets with their equivalent~%#    (parsing is made in EttsSkill::process_utterance()~%#      -> utterance_utils::replace_natural_langugage_tags() )~%#~%# -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:~%#    metadata tags support~%#    Emotion flags:~%#    Example: text=\"\\emotion=Happy I speak with a happy voice.\";~%#    Among \"HAPPY\", \"SAD\", \"TRANQUILITY\", \"NERVOUS\"~%#    (parsing is made in EttsSkill::process_utterance()~%#      -> EttsSkill::apply_metadata_tags() )~%#~%# -> if using LOQUENDO primitive: additional flags~%#    The Loquendo engine support a number of additional flags.~%#    Example: text=\"I had... \\\\pause=500 a complete relooking. \\\\item=Whistle_01\";~%#    These tags are stripped out of the sentence if another engine is used.~%#    (parsing is made in EttsSkill::process_utterance()~%#      -> utterance_utils::strip_metadata_tags() )~%#~%# -> if using NONVERBAL primitive: keys~%#    You must use one of the semantic keys of non_verbal.h:~%#    \"SINGING\"|\"CONFIRMATION\"|\"THINKING\"|\"WARNING\"|\"DIALOG\"|\"HELLO\"|\"ERROR\"|\"AMAZING\"~%#    Example: text=\"SINGING\";~%#~%# -> if using  MUSIC_SCORE primitive, use a music score (cf etts_music_score.h)~%#    Example:  text=\"BPM=85,A6,{},Ab2,C5,1/4-C3\";~%#    You can also use a filepath, it must end with \".score\".~%#    For example text=\"/tmp/mymusic.score\".~%#    This file must contain a valid music score, for instance \"C4,D4,E4,D4,C4\"~%#~%# Note that if using NONVERBAL and MUSIC_SCORE,~%#   multi-language, metadata, snippets are not used.~%#   However, the language and the emotion fields of the message are applied as usual.~%string text~%~%### language domain~%# \"en\" for english, \"es\" for spanish, etc.~%# empty (\"\") for keeping the same language~%string language~%~%# re-use the same primitive that was used in the last sentence~%int16 PRIM_LAST_USED = 0~%# open source, homebrew - does not emit any sound (mute)~%int16 PRIM_NOVOICE = 1~%# open source - based on the Festival project, by the University of Edinburgh~%# http://www.cstr.ed.ac.uk/projects/festival/~%int16 PRIM_FESTIVAL = 2~%# prorietary, webservice - Google TTS webservice, most notably used in Google Translate~%# https://en.wikipedia.org/wiki/Google_Text-to-Speech~%int16 PRIM_GOOGLE = 3~%# prorietary - based on the Loquendo binaries~%# http://www.nuance.com/for-business/customer-service-solutions/loquendo-small-business-bundle/index.htm~%int16 PRIM_LOQUENDO = 4~%# prorietary, webservice - the speech synthesizer developed by Microsoft for its OS~%# https://en.wikipedia.org/wiki/Microsoft_text-to-speech_voices~%int16 PRIM_MICROSOFT = 5~%# open source, homebrew - beep and other sounds~%int16 PRIM_NONVERBAL = 6~%# open source, homebrew - generate music sounds based the music score, written in notes~%int16 PRIM_MUSIC_SCORE = 7~%# open source - based on pico2wave, a small footprint TTS released by SVOX~%# https://en.wikipedia.org/wiki/SVOX~%int16 PRIM_PICO = 8~%# open source - based on the espeak utility, a multi-lingual software speech synthesizer~%# http://espeak.sourceforge.net/~%int16 PRIM_ESPEAK = 9~%# prorietary, webservice - uses the mobile Nuance Mobility webservice~%# http://www.nuance.com/for-business/customer-service-solutions/loquendo-small-business-bundle/index.htm~%int16 PRIM_NUANCE = 10~%# prorietary, webservice - uses the IVONA TTS webservice for developpers~%# http://developer.ivona.com/en/speechcloud/index.html~%int16 PRIM_IVONA = 11~%# prorietary, webservice - AT&T TTS webservice~%# http://www2.research.att.com/~~ttsweb/tts/~%int16 PRIM_AT = 12~%# prorietary~%# https://www.readspeaker.com~%int16 PRIM_READSPEAKER = 13~%~%# the wanted low-level voice engine: one of the previous PRIM_*~%# leave empty (PRIM_LAST_USED) for keeping the same primitive~%int16 primitive~%~%~%#The identifier of the utterance in oder to know when the utterance begins and ends.~%#This identifier  could be the miliseconds of the system, in this way it's unequivocal~%#To get the identifier you can use this boost funtion:  boost::posix_time::second_clock::local_time();~%int64 utteranceIdentifier~%~%~%~%int16 EMOTION_LAST_USED = 0~%int16 EMOTION_HAPPY = 1~%int16 EMOTION_SAD = 2~%int16 EMOTION_NEUTRAL = 3~%int16 EMOTION_ANXIOUS = 4~%int16 EMOTION_RELAXED = 5~%int16 EMOTION_ANGRY = 6~%int16 EMOTION_BORED = 7~%int16 EMOTION_SURPRISED = 8~%~%### the wanted emotion, if supported by the primitive~%# use one of the previous EMOTION_*~%# leave empty (EMOTION_LAST_USED) for keeping the same emotion~%int16 emotion~%~%~%~%### the parameters that configure the voice (ALPHA VERSION)~%int16 paralinguistic~%int16 pitch~%float32 prosody_rate~%~%~%~%int16 VOLUME_LAST_USED = 0~%int16 VOLUME_MIN = 1~%int16 VOLUME_MAX = 100~%### the desired volume output, if supported by the primitive~%# volume must be between VOLUME_MIN and VOLUME_MAX~%# leave empty (VOLUME_LAST_USED) for no change~%int16 volume~%~%int16 QUEUE_SENTENCE = 0~%int16 SHUTUP_IMMEDIATLY_AND_SAY_SENTENCE = 1~%int16 SHUTUP_AND_SAY_SENTENCE = 2~%int16 PAUSE = 3~%int16 RESUME = 4~%int16 SPEAK_ONLY_IF_ROBOT_QUIET = 5~%### by default, queue the sentence and say it when the previous ones have been said.~%#  Use one of the previous orders to change this behaviour.~%#  Note that if using the special instructions PAUSE and RESUME,~%#  all the other fields of the message (including text) are discarded.~%int16 priority~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Utterance)))
  "Returns full string definition for message of type 'Utterance"
  (cl:format cl:nil "####~%#### the messages sent to use the ETTS engine, via the topic \"etts\"~%####~%#### Apart from the info contained in this kind of message,~%#### these ROS parameters, written by the skill, can be useful for information:~%#### \"etts_language\" :  for example \"es\"~%#### \"etts_emotion\" :   for example \"happy\"~%#### \"etts_primitive\" : for example \"google\"~%#### \"etts_volume\" : integer in [VOLUME_MIN, VOLUME_MAX]~%#### \"etts_queue_size\" : for example \"2\"~%#### \"etts_speaking_now\" : true or false, set at the beginning and end of each sentence~%#### \"etts_current_sentence\": the sentence given to the low level primitive, for instance \"Hola\"~%####~%#### And the parameters written by the different APIs:~%#### \"etts_kidnapped\" : for example \"\" (not kidnapped) or \"node_name\"~%~%~%### useful for the stamp~%Header header~%~%### the real sentence to be said~%# A simple example: text=\"Hello world, how are you?\";~%#~%# -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:~%#    multi-languages support~%#    Example: text=\"es:hola|en:hi|en:Hello|fr:bonjour\";~%#    Multiple instances of a given language are supported,~%#    one of these will be chosen randomly.~%#    Example:  textMultiLanguage=\"en:Hello|en:Hi|fr:Salut\";~%#    if (target_language == LANGUAGE_ENGLISH), will return randomly \"Hello\" or \"Hi\"~%#    if (target_language == LANGUAGE_FRENCH), will return \"Salut\"~%#    (parsing is made in EttsSkill::process_utterance()~%#      -> Translator::_build_given_language_in_multilanguage_line() )~%#~%# -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:~%#    snippets support~%#    Example: text=\"Yes, \\\\NLG=OK let us do it\";~%#    replace the natural language snippets with their equivalent~%#    (parsing is made in EttsSkill::process_utterance()~%#      -> utterance_utils::replace_natural_langugage_tags() )~%#~%# -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:~%#    metadata tags support~%#    Emotion flags:~%#    Example: text=\"\\emotion=Happy I speak with a happy voice.\";~%#    Among \"HAPPY\", \"SAD\", \"TRANQUILITY\", \"NERVOUS\"~%#    (parsing is made in EttsSkill::process_utterance()~%#      -> EttsSkill::apply_metadata_tags() )~%#~%# -> if using LOQUENDO primitive: additional flags~%#    The Loquendo engine support a number of additional flags.~%#    Example: text=\"I had... \\\\pause=500 a complete relooking. \\\\item=Whistle_01\";~%#    These tags are stripped out of the sentence if another engine is used.~%#    (parsing is made in EttsSkill::process_utterance()~%#      -> utterance_utils::strip_metadata_tags() )~%#~%# -> if using NONVERBAL primitive: keys~%#    You must use one of the semantic keys of non_verbal.h:~%#    \"SINGING\"|\"CONFIRMATION\"|\"THINKING\"|\"WARNING\"|\"DIALOG\"|\"HELLO\"|\"ERROR\"|\"AMAZING\"~%#    Example: text=\"SINGING\";~%#~%# -> if using  MUSIC_SCORE primitive, use a music score (cf etts_music_score.h)~%#    Example:  text=\"BPM=85,A6,{},Ab2,C5,1/4-C3\";~%#    You can also use a filepath, it must end with \".score\".~%#    For example text=\"/tmp/mymusic.score\".~%#    This file must contain a valid music score, for instance \"C4,D4,E4,D4,C4\"~%#~%# Note that if using NONVERBAL and MUSIC_SCORE,~%#   multi-language, metadata, snippets are not used.~%#   However, the language and the emotion fields of the message are applied as usual.~%string text~%~%### language domain~%# \"en\" for english, \"es\" for spanish, etc.~%# empty (\"\") for keeping the same language~%string language~%~%# re-use the same primitive that was used in the last sentence~%int16 PRIM_LAST_USED = 0~%# open source, homebrew - does not emit any sound (mute)~%int16 PRIM_NOVOICE = 1~%# open source - based on the Festival project, by the University of Edinburgh~%# http://www.cstr.ed.ac.uk/projects/festival/~%int16 PRIM_FESTIVAL = 2~%# prorietary, webservice - Google TTS webservice, most notably used in Google Translate~%# https://en.wikipedia.org/wiki/Google_Text-to-Speech~%int16 PRIM_GOOGLE = 3~%# prorietary - based on the Loquendo binaries~%# http://www.nuance.com/for-business/customer-service-solutions/loquendo-small-business-bundle/index.htm~%int16 PRIM_LOQUENDO = 4~%# prorietary, webservice - the speech synthesizer developed by Microsoft for its OS~%# https://en.wikipedia.org/wiki/Microsoft_text-to-speech_voices~%int16 PRIM_MICROSOFT = 5~%# open source, homebrew - beep and other sounds~%int16 PRIM_NONVERBAL = 6~%# open source, homebrew - generate music sounds based the music score, written in notes~%int16 PRIM_MUSIC_SCORE = 7~%# open source - based on pico2wave, a small footprint TTS released by SVOX~%# https://en.wikipedia.org/wiki/SVOX~%int16 PRIM_PICO = 8~%# open source - based on the espeak utility, a multi-lingual software speech synthesizer~%# http://espeak.sourceforge.net/~%int16 PRIM_ESPEAK = 9~%# prorietary, webservice - uses the mobile Nuance Mobility webservice~%# http://www.nuance.com/for-business/customer-service-solutions/loquendo-small-business-bundle/index.htm~%int16 PRIM_NUANCE = 10~%# prorietary, webservice - uses the IVONA TTS webservice for developpers~%# http://developer.ivona.com/en/speechcloud/index.html~%int16 PRIM_IVONA = 11~%# prorietary, webservice - AT&T TTS webservice~%# http://www2.research.att.com/~~ttsweb/tts/~%int16 PRIM_AT = 12~%# prorietary~%# https://www.readspeaker.com~%int16 PRIM_READSPEAKER = 13~%~%# the wanted low-level voice engine: one of the previous PRIM_*~%# leave empty (PRIM_LAST_USED) for keeping the same primitive~%int16 primitive~%~%~%#The identifier of the utterance in oder to know when the utterance begins and ends.~%#This identifier  could be the miliseconds of the system, in this way it's unequivocal~%#To get the identifier you can use this boost funtion:  boost::posix_time::second_clock::local_time();~%int64 utteranceIdentifier~%~%~%~%int16 EMOTION_LAST_USED = 0~%int16 EMOTION_HAPPY = 1~%int16 EMOTION_SAD = 2~%int16 EMOTION_NEUTRAL = 3~%int16 EMOTION_ANXIOUS = 4~%int16 EMOTION_RELAXED = 5~%int16 EMOTION_ANGRY = 6~%int16 EMOTION_BORED = 7~%int16 EMOTION_SURPRISED = 8~%~%### the wanted emotion, if supported by the primitive~%# use one of the previous EMOTION_*~%# leave empty (EMOTION_LAST_USED) for keeping the same emotion~%int16 emotion~%~%~%~%### the parameters that configure the voice (ALPHA VERSION)~%int16 paralinguistic~%int16 pitch~%float32 prosody_rate~%~%~%~%int16 VOLUME_LAST_USED = 0~%int16 VOLUME_MIN = 1~%int16 VOLUME_MAX = 100~%### the desired volume output, if supported by the primitive~%# volume must be between VOLUME_MIN and VOLUME_MAX~%# leave empty (VOLUME_LAST_USED) for no change~%int16 volume~%~%int16 QUEUE_SENTENCE = 0~%int16 SHUTUP_IMMEDIATLY_AND_SAY_SENTENCE = 1~%int16 SHUTUP_AND_SAY_SENTENCE = 2~%int16 PAUSE = 3~%int16 RESUME = 4~%int16 SPEAK_ONLY_IF_ROBOT_QUIET = 5~%### by default, queue the sentence and say it when the previous ones have been said.~%#  Use one of the previous orders to change this behaviour.~%#  Note that if using the special instructions PAUSE and RESUME,~%#  all the other fields of the message (including text) are discarded.~%int16 priority~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Utterance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'text))
     4 (cl:length (cl:slot-value msg 'language))
     2
     8
     2
     2
     2
     4
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Utterance>))
  "Converts a ROS message object to a list"
  (cl:list 'Utterance
    (cl:cons ':header (header msg))
    (cl:cons ':text (text msg))
    (cl:cons ':language (language msg))
    (cl:cons ':primitive (primitive msg))
    (cl:cons ':utteranceIdentifier (utteranceIdentifier msg))
    (cl:cons ':emotion (emotion msg))
    (cl:cons ':paralinguistic (paralinguistic msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':prosody_rate (prosody_rate msg))
    (cl:cons ':volume (volume msg))
    (cl:cons ':priority (priority msg))
))
