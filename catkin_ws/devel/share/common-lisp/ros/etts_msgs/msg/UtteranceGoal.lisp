; Auto-generated. Do not edit!


(cl:in-package etts_msgs-msg)


;//! \htmlinclude UtteranceGoal.msg.html

(cl:defclass <UtteranceGoal> (roslisp-msg-protocol:ros-message)
  ((utterance
    :reader utterance
    :initarg :utterance
    :type etts_msgs-msg:Utterance
    :initform (cl:make-instance 'etts_msgs-msg:Utterance)))
)

(cl:defclass UtteranceGoal (<UtteranceGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UtteranceGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UtteranceGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etts_msgs-msg:<UtteranceGoal> is deprecated: use etts_msgs-msg:UtteranceGoal instead.")))

(cl:ensure-generic-function 'utterance-val :lambda-list '(m))
(cl:defmethod utterance-val ((m <UtteranceGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etts_msgs-msg:utterance-val is deprecated.  Use etts_msgs-msg:utterance instead.")
  (utterance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UtteranceGoal>) ostream)
  "Serializes a message object of type '<UtteranceGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'utterance) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UtteranceGoal>) istream)
  "Deserializes a message object of type '<UtteranceGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'utterance) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UtteranceGoal>)))
  "Returns string type for a message object of type '<UtteranceGoal>"
  "etts_msgs/UtteranceGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UtteranceGoal)))
  "Returns string type for a message object of type 'UtteranceGoal"
  "etts_msgs/UtteranceGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UtteranceGoal>)))
  "Returns md5sum for a message object of type '<UtteranceGoal>"
  "c53758c81c169668f7aa3e3470102d6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UtteranceGoal)))
  "Returns md5sum for a message object of type 'UtteranceGoal"
  "c53758c81c169668f7aa3e3470102d6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UtteranceGoal>)))
  "Returns full string definition for message of type '<UtteranceGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Goal definition: input parameters~%Utterance utterance~%~%================================================================================~%MSG: etts_msgs/Utterance~%####~%#### the messages sent to use the ETTS engine, via the topic \"etts\"~%####~%#### Apart from the info contained in this kind of message,~%#### these ROS parameters, written by the skill, can be useful for information:~%#### \"etts_language\" :  for example \"es\"~%#### \"etts_emotion\" :   for example \"happy\"~%#### \"etts_primitive\" : for example \"google\"~%#### \"etts_volume\" : integer in [VOLUME_MIN, VOLUME_MAX]~%#### \"etts_queue_size\" : for example \"2\"~%#### \"etts_speaking_now\" : true or false, set at the beginning and end of each sentence~%#### \"etts_current_sentence\": the sentence given to the low level primitive, for instance \"Hola\"~%####~%#### And the parameters written by the different APIs:~%#### \"etts_kidnapped\" : for example \"\" (not kidnapped) or \"node_name\"~%~%~%### useful for the stamp~%Header header~%~%### the real sentence to be said~%# A simple example: text=\"Hello world, how are you?\";~%#~%# -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:~%#    multi-languages support~%#    Example: text=\"es:hola|en:hi|en:Hello|fr:bonjour\";~%#    Multiple instances of a given language are supported,~%#    one of these will be chosen randomly.~%#    Example:  textMultiLanguage=\"en:Hello|en:Hi|fr:Salut\";~%#    if (target_language == LANGUAGE_ENGLISH), will return randomly \"Hello\" or \"Hi\"~%#    if (target_language == LANGUAGE_FRENCH), will return \"Salut\"~%#    (parsing is made in EttsSkill::process_utterance()~%#      -> Translator::_build_given_language_in_multilanguage_line() )~%#~%# -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:~%#    snippets support~%#    Example: text=\"Yes, \\\\NLG=OK let us do it\";~%#    replace the natural language snippets with their equivalent~%#    (parsing is made in EttsSkill::process_utterance()~%#      -> utterance_utils::replace_natural_langugage_tags() )~%#~%# -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:~%#    metadata tags support~%#    Emotion flags:~%#    Example: text=\"\\emotion=Happy I speak with a happy voice.\";~%#    Among \"HAPPY\", \"SAD\", \"TRANQUILITY\", \"NERVOUS\"~%#    (parsing is made in EttsSkill::process_utterance()~%#      -> EttsSkill::apply_metadata_tags() )~%#~%# -> if using LOQUENDO primitive: additional flags~%#    The Loquendo engine support a number of additional flags.~%#    Example: text=\"I had... \\\\pause=500 a complete relooking. \\\\item=Whistle_01\";~%#    These tags are stripped out of the sentence if another engine is used.~%#    (parsing is made in EttsSkill::process_utterance()~%#      -> utterance_utils::strip_metadata_tags() )~%#~%# -> if using NONVERBAL primitive: keys~%#    You must use one of the semantic keys of non_verbal.h:~%#    \"SINGING\"|\"CONFIRMATION\"|\"THINKING\"|\"WARNING\"|\"DIALOG\"|\"HELLO\"|\"ERROR\"|\"AMAZING\"~%#    Example: text=\"SINGING\";~%#~%# -> if using  MUSIC_SCORE primitive, use a music score (cf etts_music_score.h)~%#    Example:  text=\"BPM=85,A6,{},Ab2,C5,1/4-C3\";~%#    You can also use a filepath, it must end with \".score\".~%#    For example text=\"/tmp/mymusic.score\".~%#    This file must contain a valid music score, for instance \"C4,D4,E4,D4,C4\"~%#~%# Note that if using NONVERBAL and MUSIC_SCORE,~%#   multi-language, metadata, snippets are not used.~%#   However, the language and the emotion fields of the message are applied as usual.~%string text~%~%### language domain~%# \"en\" for english, \"es\" for spanish, etc.~%# empty (\"\") for keeping the same language~%string language~%~%# re-use the same primitive that was used in the last sentence~%int16 PRIM_LAST_USED = 0~%# open source, homebrew - does not emit any sound (mute)~%int16 PRIM_NOVOICE = 1~%# open source - based on the Festival project, by the University of Edinburgh~%# http://www.cstr.ed.ac.uk/projects/festival/~%int16 PRIM_FESTIVAL = 2~%# prorietary, webservice - Google TTS webservice, most notably used in Google Translate~%# https://en.wikipedia.org/wiki/Google_Text-to-Speech~%int16 PRIM_GOOGLE = 3~%# prorietary - based on the Loquendo binaries~%# http://www.nuance.com/for-business/customer-service-solutions/loquendo-small-business-bundle/index.htm~%int16 PRIM_LOQUENDO = 4~%# prorietary, webservice - the speech synthesizer developed by Microsoft for its OS~%# https://en.wikipedia.org/wiki/Microsoft_text-to-speech_voices~%int16 PRIM_MICROSOFT = 5~%# open source, homebrew - beep and other sounds~%int16 PRIM_NONVERBAL = 6~%# open source, homebrew - generate music sounds based the music score, written in notes~%int16 PRIM_MUSIC_SCORE = 7~%# open source - based on pico2wave, a small footprint TTS released by SVOX~%# https://en.wikipedia.org/wiki/SVOX~%int16 PRIM_PICO = 8~%# open source - based on the espeak utility, a multi-lingual software speech synthesizer~%# http://espeak.sourceforge.net/~%int16 PRIM_ESPEAK = 9~%# prorietary, webservice - uses the mobile Nuance Mobility webservice~%# http://www.nuance.com/for-business/customer-service-solutions/loquendo-small-business-bundle/index.htm~%int16 PRIM_NUANCE = 10~%# prorietary, webservice - uses the IVONA TTS webservice for developpers~%# http://developer.ivona.com/en/speechcloud/index.html~%int16 PRIM_IVONA = 11~%# prorietary, webservice - AT&T TTS webservice~%# http://www2.research.att.com/~~ttsweb/tts/~%int16 PRIM_AT = 12~%# prorietary~%# https://www.readspeaker.com~%int16 PRIM_READSPEAKER = 13~%~%# the wanted low-level voice engine: one of the previous PRIM_*~%# leave empty (PRIM_LAST_USED) for keeping the same primitive~%int16 primitive~%~%~%#The identifier of the utterance in oder to know when the utterance begins and ends.~%#This identifier  could be the miliseconds of the system, in this way it's unequivocal~%#To get the identifier you can use this boost funtion:  boost::posix_time::second_clock::local_time();~%int64 utteranceIdentifier~%~%~%~%int16 EMOTION_LAST_USED = 0~%int16 EMOTION_HAPPY = 1~%int16 EMOTION_SAD = 2~%int16 EMOTION_NEUTRAL = 3~%int16 EMOTION_ANXIOUS = 4~%int16 EMOTION_RELAXED = 5~%int16 EMOTION_ANGRY = 6~%int16 EMOTION_BORED = 7~%int16 EMOTION_SURPRISED = 8~%~%### the wanted emotion, if supported by the primitive~%# use one of the previous EMOTION_*~%# leave empty (EMOTION_LAST_USED) for keeping the same emotion~%int16 emotion~%~%~%~%### the parameters that configure the voice (ALPHA VERSION)~%int16 paralinguistic~%int16 pitch~%float32 prosody_rate~%~%~%~%int16 VOLUME_LAST_USED = 0~%int16 VOLUME_MIN = 1~%int16 VOLUME_MAX = 100~%### the desired volume output, if supported by the primitive~%# volume must be between VOLUME_MIN and VOLUME_MAX~%# leave empty (VOLUME_LAST_USED) for no change~%int16 volume~%~%int16 QUEUE_SENTENCE = 0~%int16 SHUTUP_IMMEDIATLY_AND_SAY_SENTENCE = 1~%int16 SHUTUP_AND_SAY_SENTENCE = 2~%int16 PAUSE = 3~%int16 RESUME = 4~%int16 SPEAK_ONLY_IF_ROBOT_QUIET = 5~%### by default, queue the sentence and say it when the previous ones have been said.~%#  Use one of the previous orders to change this behaviour.~%#  Note that if using the special instructions PAUSE and RESUME,~%#  all the other fields of the message (including text) are discarded.~%int16 priority~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UtteranceGoal)))
  "Returns full string definition for message of type 'UtteranceGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Goal definition: input parameters~%Utterance utterance~%~%================================================================================~%MSG: etts_msgs/Utterance~%####~%#### the messages sent to use the ETTS engine, via the topic \"etts\"~%####~%#### Apart from the info contained in this kind of message,~%#### these ROS parameters, written by the skill, can be useful for information:~%#### \"etts_language\" :  for example \"es\"~%#### \"etts_emotion\" :   for example \"happy\"~%#### \"etts_primitive\" : for example \"google\"~%#### \"etts_volume\" : integer in [VOLUME_MIN, VOLUME_MAX]~%#### \"etts_queue_size\" : for example \"2\"~%#### \"etts_speaking_now\" : true or false, set at the beginning and end of each sentence~%#### \"etts_current_sentence\": the sentence given to the low level primitive, for instance \"Hola\"~%####~%#### And the parameters written by the different APIs:~%#### \"etts_kidnapped\" : for example \"\" (not kidnapped) or \"node_name\"~%~%~%### useful for the stamp~%Header header~%~%### the real sentence to be said~%# A simple example: text=\"Hello world, how are you?\";~%#~%# -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:~%#    multi-languages support~%#    Example: text=\"es:hola|en:hi|en:Hello|fr:bonjour\";~%#    Multiple instances of a given language are supported,~%#    one of these will be chosen randomly.~%#    Example:  textMultiLanguage=\"en:Hello|en:Hi|fr:Salut\";~%#    if (target_language == LANGUAGE_ENGLISH), will return randomly \"Hello\" or \"Hi\"~%#    if (target_language == LANGUAGE_FRENCH), will return \"Salut\"~%#    (parsing is made in EttsSkill::process_utterance()~%#      -> Translator::_build_given_language_in_multilanguage_line() )~%#~%# -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:~%#    snippets support~%#    Example: text=\"Yes, \\\\NLG=OK let us do it\";~%#    replace the natural language snippets with their equivalent~%#    (parsing is made in EttsSkill::process_utterance()~%#      -> utterance_utils::replace_natural_langugage_tags() )~%#~%# -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:~%#    metadata tags support~%#    Emotion flags:~%#    Example: text=\"\\emotion=Happy I speak with a happy voice.\";~%#    Among \"HAPPY\", \"SAD\", \"TRANQUILITY\", \"NERVOUS\"~%#    (parsing is made in EttsSkill::process_utterance()~%#      -> EttsSkill::apply_metadata_tags() )~%#~%# -> if using LOQUENDO primitive: additional flags~%#    The Loquendo engine support a number of additional flags.~%#    Example: text=\"I had... \\\\pause=500 a complete relooking. \\\\item=Whistle_01\";~%#    These tags are stripped out of the sentence if another engine is used.~%#    (parsing is made in EttsSkill::process_utterance()~%#      -> utterance_utils::strip_metadata_tags() )~%#~%# -> if using NONVERBAL primitive: keys~%#    You must use one of the semantic keys of non_verbal.h:~%#    \"SINGING\"|\"CONFIRMATION\"|\"THINKING\"|\"WARNING\"|\"DIALOG\"|\"HELLO\"|\"ERROR\"|\"AMAZING\"~%#    Example: text=\"SINGING\";~%#~%# -> if using  MUSIC_SCORE primitive, use a music score (cf etts_music_score.h)~%#    Example:  text=\"BPM=85,A6,{},Ab2,C5,1/4-C3\";~%#    You can also use a filepath, it must end with \".score\".~%#    For example text=\"/tmp/mymusic.score\".~%#    This file must contain a valid music score, for instance \"C4,D4,E4,D4,C4\"~%#~%# Note that if using NONVERBAL and MUSIC_SCORE,~%#   multi-language, metadata, snippets are not used.~%#   However, the language and the emotion fields of the message are applied as usual.~%string text~%~%### language domain~%# \"en\" for english, \"es\" for spanish, etc.~%# empty (\"\") for keeping the same language~%string language~%~%# re-use the same primitive that was used in the last sentence~%int16 PRIM_LAST_USED = 0~%# open source, homebrew - does not emit any sound (mute)~%int16 PRIM_NOVOICE = 1~%# open source - based on the Festival project, by the University of Edinburgh~%# http://www.cstr.ed.ac.uk/projects/festival/~%int16 PRIM_FESTIVAL = 2~%# prorietary, webservice - Google TTS webservice, most notably used in Google Translate~%# https://en.wikipedia.org/wiki/Google_Text-to-Speech~%int16 PRIM_GOOGLE = 3~%# prorietary - based on the Loquendo binaries~%# http://www.nuance.com/for-business/customer-service-solutions/loquendo-small-business-bundle/index.htm~%int16 PRIM_LOQUENDO = 4~%# prorietary, webservice - the speech synthesizer developed by Microsoft for its OS~%# https://en.wikipedia.org/wiki/Microsoft_text-to-speech_voices~%int16 PRIM_MICROSOFT = 5~%# open source, homebrew - beep and other sounds~%int16 PRIM_NONVERBAL = 6~%# open source, homebrew - generate music sounds based the music score, written in notes~%int16 PRIM_MUSIC_SCORE = 7~%# open source - based on pico2wave, a small footprint TTS released by SVOX~%# https://en.wikipedia.org/wiki/SVOX~%int16 PRIM_PICO = 8~%# open source - based on the espeak utility, a multi-lingual software speech synthesizer~%# http://espeak.sourceforge.net/~%int16 PRIM_ESPEAK = 9~%# prorietary, webservice - uses the mobile Nuance Mobility webservice~%# http://www.nuance.com/for-business/customer-service-solutions/loquendo-small-business-bundle/index.htm~%int16 PRIM_NUANCE = 10~%# prorietary, webservice - uses the IVONA TTS webservice for developpers~%# http://developer.ivona.com/en/speechcloud/index.html~%int16 PRIM_IVONA = 11~%# prorietary, webservice - AT&T TTS webservice~%# http://www2.research.att.com/~~ttsweb/tts/~%int16 PRIM_AT = 12~%# prorietary~%# https://www.readspeaker.com~%int16 PRIM_READSPEAKER = 13~%~%# the wanted low-level voice engine: one of the previous PRIM_*~%# leave empty (PRIM_LAST_USED) for keeping the same primitive~%int16 primitive~%~%~%#The identifier of the utterance in oder to know when the utterance begins and ends.~%#This identifier  could be the miliseconds of the system, in this way it's unequivocal~%#To get the identifier you can use this boost funtion:  boost::posix_time::second_clock::local_time();~%int64 utteranceIdentifier~%~%~%~%int16 EMOTION_LAST_USED = 0~%int16 EMOTION_HAPPY = 1~%int16 EMOTION_SAD = 2~%int16 EMOTION_NEUTRAL = 3~%int16 EMOTION_ANXIOUS = 4~%int16 EMOTION_RELAXED = 5~%int16 EMOTION_ANGRY = 6~%int16 EMOTION_BORED = 7~%int16 EMOTION_SURPRISED = 8~%~%### the wanted emotion, if supported by the primitive~%# use one of the previous EMOTION_*~%# leave empty (EMOTION_LAST_USED) for keeping the same emotion~%int16 emotion~%~%~%~%### the parameters that configure the voice (ALPHA VERSION)~%int16 paralinguistic~%int16 pitch~%float32 prosody_rate~%~%~%~%int16 VOLUME_LAST_USED = 0~%int16 VOLUME_MIN = 1~%int16 VOLUME_MAX = 100~%### the desired volume output, if supported by the primitive~%# volume must be between VOLUME_MIN and VOLUME_MAX~%# leave empty (VOLUME_LAST_USED) for no change~%int16 volume~%~%int16 QUEUE_SENTENCE = 0~%int16 SHUTUP_IMMEDIATLY_AND_SAY_SENTENCE = 1~%int16 SHUTUP_AND_SAY_SENTENCE = 2~%int16 PAUSE = 3~%int16 RESUME = 4~%int16 SPEAK_ONLY_IF_ROBOT_QUIET = 5~%### by default, queue the sentence and say it when the previous ones have been said.~%#  Use one of the previous orders to change this behaviour.~%#  Note that if using the special instructions PAUSE and RESUME,~%#  all the other fields of the message (including text) are discarded.~%int16 priority~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UtteranceGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'utterance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UtteranceGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'UtteranceGoal
    (cl:cons ':utterance (utterance msg))
))
