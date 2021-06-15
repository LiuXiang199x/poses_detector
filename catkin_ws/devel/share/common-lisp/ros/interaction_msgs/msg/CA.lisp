; Auto-generated. Do not edit!


(cl:in-package interaction_msgs-msg)


;//! \htmlinclude CA.msg.html

(cl:defclass <CA> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ca_name
    :reader ca_name
    :initarg :ca_name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (emitter
    :reader emitter
    :initarg :emitter
    :type cl:string
    :initform "")
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:fixnum
    :initform 0)
   (values
    :reader values
    :initarg :values
    :type (cl:vector common_msgs-msg:KeyValuePair)
   :initform (cl:make-array 0 :element-type 'common_msgs-msg:KeyValuePair :initial-element (cl:make-instance 'common_msgs-msg:KeyValuePair))))
)

(cl:defclass CA (<CA>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CA>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CA)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interaction_msgs-msg:<CA> is deprecated: use interaction_msgs-msg:CA instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:header-val is deprecated.  Use interaction_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ca_name-val :lambda-list '(m))
(cl:defmethod ca_name-val ((m <CA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:ca_name-val is deprecated.  Use interaction_msgs-msg:ca_name instead.")
  (ca_name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <CA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:type-val is deprecated.  Use interaction_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'emitter-val :lambda-list '(m))
(cl:defmethod emitter-val ((m <CA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:emitter-val is deprecated.  Use interaction_msgs-msg:emitter instead.")
  (emitter m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <CA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:priority-val is deprecated.  Use interaction_msgs-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <CA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:duration-val is deprecated.  Use interaction_msgs-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <CA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:values-val is deprecated.  Use interaction_msgs-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CA>)))
    "Constants for message type '<CA>"
  '((:LOW_PRIORITY . 0)
    (:MEDIUM_PRIORITY . 1)
    (:HIGH_PRIORITY . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CA)))
    "Constants for message type 'CA"
  '((:LOW_PRIORITY . 0)
    (:MEDIUM_PRIORITY . 1)
    (:HIGH_PRIORITY . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CA>) ostream)
  "Serializes a message object of type '<CA>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ca_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ca_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'emitter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'emitter))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CA>) istream)
  "Deserializes a message object of type '<CA>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ca_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ca_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'emitter) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'emitter) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'priority)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'common_msgs-msg:KeyValuePair))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CA>)))
  "Returns string type for a message object of type '<CA>"
  "interaction_msgs/CA")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CA)))
  "Returns string type for a message object of type 'CA"
  "interaction_msgs/CA")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CA>)))
  "Returns md5sum for a message object of type '<CA>"
  "58e6b2538ab1900bae6b4b2cbe8c5273")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CA)))
  "Returns md5sum for a message object of type 'CA"
  "58e6b2538ab1900bae6b4b2cbe8c5273")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CA>)))
  "Returns full string definition for message of type '<CA>"
  (cl:format cl:nil "#use standard header~%Header header~%~%string ca_name~%string type~%string emitter~%~%uint16 LOW_PRIORITY = 0~%uint16 MEDIUM_PRIORITY = 1~%uint16 HIGH_PRIORITY = 2~%~%#priority level~%uint16 priority~%~%#duration of the CA~%uint16 duration~%~%#Key-value array: ca specific fields~%common_msgs/KeyValuePair[] values~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: common_msgs/KeyValuePair~%#use standard header~%#Header header~%~%#string values for key and its value~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CA)))
  "Returns full string definition for message of type 'CA"
  (cl:format cl:nil "#use standard header~%Header header~%~%string ca_name~%string type~%string emitter~%~%uint16 LOW_PRIORITY = 0~%uint16 MEDIUM_PRIORITY = 1~%uint16 HIGH_PRIORITY = 2~%~%#priority level~%uint16 priority~%~%#duration of the CA~%uint16 duration~%~%#Key-value array: ca specific fields~%common_msgs/KeyValuePair[] values~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: common_msgs/KeyValuePair~%#use standard header~%#Header header~%~%#string values for key and its value~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CA>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'ca_name))
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'emitter))
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CA>))
  "Converts a ROS message object to a list"
  (cl:list 'CA
    (cl:cons ':header (header msg))
    (cl:cons ':ca_name (ca_name msg))
    (cl:cons ':type (type msg))
    (cl:cons ':emitter (emitter msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':values (values msg))
))
