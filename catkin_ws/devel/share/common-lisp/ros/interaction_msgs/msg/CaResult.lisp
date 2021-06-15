; Auto-generated. Do not edit!


(cl:in-package interaction_msgs-msg)


;//! \htmlinclude CaResult.msg.html

(cl:defclass <CaResult> (roslisp-msg-protocol:ros-message)
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
   (emitter
    :reader emitter
    :initarg :emitter
    :type cl:string
    :initform "")
   (result
    :reader result
    :initarg :result
    :type cl:string
    :initform "")
   (values
    :reader values
    :initarg :values
    :type (cl:vector common_msgs-msg:KeyValuePair)
   :initform (cl:make-array 0 :element-type 'common_msgs-msg:KeyValuePair :initial-element (cl:make-instance 'common_msgs-msg:KeyValuePair))))
)

(cl:defclass CaResult (<CaResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CaResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CaResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interaction_msgs-msg:<CaResult> is deprecated: use interaction_msgs-msg:CaResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:header-val is deprecated.  Use interaction_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ca_name-val :lambda-list '(m))
(cl:defmethod ca_name-val ((m <CaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:ca_name-val is deprecated.  Use interaction_msgs-msg:ca_name instead.")
  (ca_name m))

(cl:ensure-generic-function 'emitter-val :lambda-list '(m))
(cl:defmethod emitter-val ((m <CaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:emitter-val is deprecated.  Use interaction_msgs-msg:emitter instead.")
  (emitter m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:result-val is deprecated.  Use interaction_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <CaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:values-val is deprecated.  Use interaction_msgs-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CaResult>) ostream)
  "Serializes a message object of type '<CaResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ca_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ca_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'emitter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'emitter))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CaResult>) istream)
  "Deserializes a message object of type '<CaResult>"
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
      (cl:setf (cl:slot-value msg 'emitter) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'emitter) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CaResult>)))
  "Returns string type for a message object of type '<CaResult>"
  "interaction_msgs/CaResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CaResult)))
  "Returns string type for a message object of type 'CaResult"
  "interaction_msgs/CaResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CaResult>)))
  "Returns md5sum for a message object of type '<CaResult>"
  "1fb08cd51b312571456f98845a10c69a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CaResult)))
  "Returns md5sum for a message object of type 'CaResult"
  "1fb08cd51b312571456f98845a10c69a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CaResult>)))
  "Returns full string definition for message of type '<CaResult>"
  (cl:format cl:nil "#use standard header~%Header header~%~%string ca_name~%string emitter~%~%#Result of the execution~%string result~%~%#Key-value array: information required by the applications~%common_msgs/KeyValuePair[] values ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: common_msgs/KeyValuePair~%#use standard header~%#Header header~%~%#string values for key and its value~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CaResult)))
  "Returns full string definition for message of type 'CaResult"
  (cl:format cl:nil "#use standard header~%Header header~%~%string ca_name~%string emitter~%~%#Result of the execution~%string result~%~%#Key-value array: information required by the applications~%common_msgs/KeyValuePair[] values ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: common_msgs/KeyValuePair~%#use standard header~%#Header header~%~%#string values for key and its value~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CaResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'ca_name))
     4 (cl:length (cl:slot-value msg 'emitter))
     4 (cl:length (cl:slot-value msg 'result))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CaResult>))
  "Converts a ROS message object to a list"
  (cl:list 'CaResult
    (cl:cons ':header (header msg))
    (cl:cons ':ca_name (ca_name msg))
    (cl:cons ':emitter (emitter msg))
    (cl:cons ':result (result msg))
    (cl:cons ':values (values msg))
))
