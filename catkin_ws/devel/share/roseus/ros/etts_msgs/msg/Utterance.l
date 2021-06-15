;; Auto-generated. Do not edit!


(when (boundp 'etts_msgs::Utterance)
  (if (not (find-package "ETTS_MSGS"))
    (make-package "ETTS_MSGS"))
  (shadow 'Utterance (find-package "ETTS_MSGS")))
(unless (find-package "ETTS_MSGS::UTTERANCE")
  (make-package "ETTS_MSGS::UTTERANCE"))

(in-package "ROS")
;;//! \htmlinclude Utterance.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*PRIM_LAST_USED*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*PRIM_LAST_USED* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*PRIM_LAST_USED* 0)
(intern "*PRIM_NOVOICE*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*PRIM_NOVOICE* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*PRIM_NOVOICE* 1)
(intern "*PRIM_FESTIVAL*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*PRIM_FESTIVAL* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*PRIM_FESTIVAL* 2)
(intern "*PRIM_GOOGLE*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*PRIM_GOOGLE* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*PRIM_GOOGLE* 3)
(intern "*PRIM_LOQUENDO*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*PRIM_LOQUENDO* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*PRIM_LOQUENDO* 4)
(intern "*PRIM_MICROSOFT*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*PRIM_MICROSOFT* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*PRIM_MICROSOFT* 5)
(intern "*PRIM_NONVERBAL*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*PRIM_NONVERBAL* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*PRIM_NONVERBAL* 6)
(intern "*PRIM_MUSIC_SCORE*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*PRIM_MUSIC_SCORE* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*PRIM_MUSIC_SCORE* 7)
(intern "*PRIM_PICO*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*PRIM_PICO* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*PRIM_PICO* 8)
(intern "*PRIM_ESPEAK*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*PRIM_ESPEAK* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*PRIM_ESPEAK* 9)
(intern "*PRIM_NUANCE*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*PRIM_NUANCE* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*PRIM_NUANCE* 10)
(intern "*PRIM_IVONA*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*PRIM_IVONA* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*PRIM_IVONA* 11)
(intern "*PRIM_AT*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*PRIM_AT* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*PRIM_AT* 12)
(intern "*PRIM_READSPEAKER*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*PRIM_READSPEAKER* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*PRIM_READSPEAKER* 13)
(intern "*EMOTION_LAST_USED*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*EMOTION_LAST_USED* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*EMOTION_LAST_USED* 0)
(intern "*EMOTION_HAPPY*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*EMOTION_HAPPY* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*EMOTION_HAPPY* 1)
(intern "*EMOTION_SAD*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*EMOTION_SAD* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*EMOTION_SAD* 2)
(intern "*EMOTION_NEUTRAL*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*EMOTION_NEUTRAL* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*EMOTION_NEUTRAL* 3)
(intern "*EMOTION_ANXIOUS*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*EMOTION_ANXIOUS* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*EMOTION_ANXIOUS* 4)
(intern "*EMOTION_RELAXED*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*EMOTION_RELAXED* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*EMOTION_RELAXED* 5)
(intern "*EMOTION_ANGRY*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*EMOTION_ANGRY* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*EMOTION_ANGRY* 6)
(intern "*EMOTION_BORED*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*EMOTION_BORED* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*EMOTION_BORED* 7)
(intern "*EMOTION_SURPRISED*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*EMOTION_SURPRISED* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*EMOTION_SURPRISED* 8)
(intern "*VOLUME_LAST_USED*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*VOLUME_LAST_USED* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*VOLUME_LAST_USED* 0)
(intern "*VOLUME_MIN*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*VOLUME_MIN* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*VOLUME_MIN* 1)
(intern "*VOLUME_MAX*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*VOLUME_MAX* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*VOLUME_MAX* 100)
(intern "*QUEUE_SENTENCE*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*QUEUE_SENTENCE* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*QUEUE_SENTENCE* 0)
(intern "*SHUTUP_IMMEDIATLY_AND_SAY_SENTENCE*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*SHUTUP_IMMEDIATLY_AND_SAY_SENTENCE* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*SHUTUP_IMMEDIATLY_AND_SAY_SENTENCE* 1)
(intern "*SHUTUP_AND_SAY_SENTENCE*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*SHUTUP_AND_SAY_SENTENCE* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*SHUTUP_AND_SAY_SENTENCE* 2)
(intern "*PAUSE*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*PAUSE* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*PAUSE* 3)
(intern "*RESUME*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*RESUME* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*RESUME* 4)
(intern "*SPEAK_ONLY_IF_ROBOT_QUIET*" (find-package "ETTS_MSGS::UTTERANCE"))
(shadow '*SPEAK_ONLY_IF_ROBOT_QUIET* (find-package "ETTS_MSGS::UTTERANCE"))
(defconstant etts_msgs::Utterance::*SPEAK_ONLY_IF_ROBOT_QUIET* 5)
(defclass etts_msgs::Utterance
  :super ros::object
  :slots (_header _text _language _primitive _utteranceIdentifier _emotion _paralinguistic _pitch _prosody_rate _volume _priority ))

(defmethod etts_msgs::Utterance
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:text __text) "")
    ((:language __language) "")
    ((:primitive __primitive) 0)
    ((:utteranceIdentifier __utteranceIdentifier) 0)
    ((:emotion __emotion) 0)
    ((:paralinguistic __paralinguistic) 0)
    ((:pitch __pitch) 0)
    ((:prosody_rate __prosody_rate) 0.0)
    ((:volume __volume) 0)
    ((:priority __priority) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _text (string __text))
   (setq _language (string __language))
   (setq _primitive (round __primitive))
   (setq _utteranceIdentifier (round __utteranceIdentifier))
   (setq _emotion (round __emotion))
   (setq _paralinguistic (round __paralinguistic))
   (setq _pitch (round __pitch))
   (setq _prosody_rate (float __prosody_rate))
   (setq _volume (round __volume))
   (setq _priority (round __priority))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:language
   (&optional __language)
   (if __language (setq _language __language)) _language)
  (:primitive
   (&optional __primitive)
   (if __primitive (setq _primitive __primitive)) _primitive)
  (:utteranceIdentifier
   (&optional __utteranceIdentifier)
   (if __utteranceIdentifier (setq _utteranceIdentifier __utteranceIdentifier)) _utteranceIdentifier)
  (:emotion
   (&optional __emotion)
   (if __emotion (setq _emotion __emotion)) _emotion)
  (:paralinguistic
   (&optional __paralinguistic)
   (if __paralinguistic (setq _paralinguistic __paralinguistic)) _paralinguistic)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:prosody_rate
   (&optional __prosody_rate)
   (if __prosody_rate (setq _prosody_rate __prosody_rate)) _prosody_rate)
  (:volume
   (&optional __volume)
   (if __volume (setq _volume __volume)) _volume)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _text
    4 (length _text)
    ;; string _language
    4 (length _language)
    ;; int16 _primitive
    2
    ;; int64 _utteranceIdentifier
    8
    ;; int16 _emotion
    2
    ;; int16 _paralinguistic
    2
    ;; int16 _pitch
    2
    ;; float32 _prosody_rate
    4
    ;; int16 _volume
    2
    ;; int16 _priority
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; string _language
       (write-long (length _language) s) (princ _language s)
     ;; int16 _primitive
       (write-word _primitive s)
     ;; int64 _utteranceIdentifier
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _utteranceIdentifier (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _utteranceIdentifier) (= (length (_utteranceIdentifier . bv)) 2)) ;; bignum
              (write-long (ash (elt (_utteranceIdentifier . bv) 0) 0) s)
              (write-long (ash (elt (_utteranceIdentifier . bv) 1) -1) s))
             ((and (class _utteranceIdentifier) (= (length (_utteranceIdentifier . bv)) 1)) ;; big1
              (write-long (elt (_utteranceIdentifier . bv) 0) s)
              (write-long (if (>= _utteranceIdentifier 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _utteranceIdentifier s)(write-long (if (>= _utteranceIdentifier 0) 0 #xffffffff) s)))
     ;; int16 _emotion
       (write-word _emotion s)
     ;; int16 _paralinguistic
       (write-word _paralinguistic s)
     ;; int16 _pitch
       (write-word _pitch s)
     ;; float32 _prosody_rate
       (sys::poke _prosody_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _volume
       (write-word _volume s)
     ;; int16 _priority
       (write-word _priority s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _language
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _language (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _primitive
     (setq _primitive (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int64 _utteranceIdentifier
#+(or :alpha :irix6 :x86_64)
      (setf _utteranceIdentifier (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _utteranceIdentifier (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int16 _emotion
     (setq _emotion (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _paralinguistic
     (setq _paralinguistic (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pitch
     (setq _pitch (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _prosody_rate
     (setq _prosody_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _volume
     (setq _volume (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _priority
     (setq _priority (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get etts_msgs::Utterance :md5sum-) "ed088da8fc9f0bef0a7656c5687abdcc")
(setf (get etts_msgs::Utterance :datatype-) "etts_msgs/Utterance")
(setf (get etts_msgs::Utterance :definition-)
      "####
#### the messages sent to use the ETTS engine, via the topic \"etts\"
####
#### Apart from the info contained in this kind of message,
#### these ROS parameters, written by the skill, can be useful for information:
#### \"etts_language\" :  for example \"es\"
#### \"etts_emotion\" :   for example \"happy\"
#### \"etts_primitive\" : for example \"google\"
#### \"etts_volume\" : integer in [VOLUME_MIN, VOLUME_MAX]
#### \"etts_queue_size\" : for example \"2\"
#### \"etts_speaking_now\" : true or false, set at the beginning and end of each sentence
#### \"etts_current_sentence\": the sentence given to the low level primitive, for instance \"Hola\"
####
#### And the parameters written by the different APIs:
#### \"etts_kidnapped\" : for example \"\" (not kidnapped) or \"node_name\"


### useful for the stamp
Header header

### the real sentence to be said
# A simple example: text=\"Hello world, how are you?\";
#
# -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:
#    multi-languages support
#    Example: text=\"es:hola|en:hi|en:Hello|fr:bonjour\";
#    Multiple instances of a given language are supported,
#    one of these will be chosen randomly.
#    Example:  textMultiLanguage=\"en:Hello|en:Hi|fr:Salut\";
#    if (target_language == LANGUAGE_ENGLISH), will return randomly \"Hello\" or \"Hi\"
#    if (target_language == LANGUAGE_FRENCH), will return \"Salut\"
#    (parsing is made in EttsSkill::process_utterance()
#      -> Translator::_build_given_language_in_multilanguage_line() )
#
# -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:
#    snippets support
#    Example: text=\"Yes, \\\\NLG=OK let us do it\";
#    replace the natural language snippets with their equivalent
#    (parsing is made in EttsSkill::process_utterance()
#      -> utterance_utils::replace_natural_langugage_tags() )
#
# -> if using FESTIVAL|GOOGLE|LOQUENDO|MICROSOFT|PICO|ESPEAK|NUANCE|IVONA|AT primitive:
#    metadata tags support
#    Emotion flags:
#    Example: text=\"\\emotion=Happy I speak with a happy voice.\";
#    Among \"HAPPY\", \"SAD\", \"TRANQUILITY\", \"NERVOUS\"
#    (parsing is made in EttsSkill::process_utterance()
#      -> EttsSkill::apply_metadata_tags() )
#
# -> if using LOQUENDO primitive: additional flags
#    The Loquendo engine support a number of additional flags.
#    Example: text=\"I had... \\\\pause=500 a complete relooking. \\\\item=Whistle_01\";
#    These tags are stripped out of the sentence if another engine is used.
#    (parsing is made in EttsSkill::process_utterance()
#      -> utterance_utils::strip_metadata_tags() )
#
# -> if using NONVERBAL primitive: keys
#    You must use one of the semantic keys of non_verbal.h:
#    \"SINGING\"|\"CONFIRMATION\"|\"THINKING\"|\"WARNING\"|\"DIALOG\"|\"HELLO\"|\"ERROR\"|\"AMAZING\"
#    Example: text=\"SINGING\";
#
# -> if using  MUSIC_SCORE primitive, use a music score (cf etts_music_score.h)
#    Example:  text=\"BPM=85,A6,{},Ab2,C5,1/4-C3\";
#    You can also use a filepath, it must end with \".score\".
#    For example text=\"/tmp/mymusic.score\".
#    This file must contain a valid music score, for instance \"C4,D4,E4,D4,C4\"
#
# Note that if using NONVERBAL and MUSIC_SCORE,
#   multi-language, metadata, snippets are not used.
#   However, the language and the emotion fields of the message are applied as usual.
string text

### language domain
# \"en\" for english, \"es\" for spanish, etc.
# empty (\"\") for keeping the same language
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

")



(provide :etts_msgs/Utterance "ed088da8fc9f0bef0a7656c5687abdcc")


