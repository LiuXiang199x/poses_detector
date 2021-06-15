; Auto-generated. Do not edit!


(cl:in-package interaction_msgs-msg)


;//! \htmlinclude Expression.msg.html

(cl:defclass <Expression> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (when
    :reader when
    :initarg :when
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
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
   (params
    :reader params
    :initarg :params
    :type (cl:vector common_msgs-msg:KeyValuePair)
   :initform (cl:make-array 0 :element-type 'common_msgs-msg:KeyValuePair :initial-element (cl:make-instance 'common_msgs-msg:KeyValuePair))))
)

(cl:defclass Expression (<Expression>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Expression>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Expression)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name interaction_msgs-msg:<Expression> is deprecated: use interaction_msgs-msg:Expression instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Expression>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:header-val is deprecated.  Use interaction_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Expression>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:name-val is deprecated.  Use interaction_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'when-val :lambda-list '(m))
(cl:defmethod when-val ((m <Expression>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:when-val is deprecated.  Use interaction_msgs-msg:when instead.")
  (when m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Expression>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:id-val is deprecated.  Use interaction_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'emitter-val :lambda-list '(m))
(cl:defmethod emitter-val ((m <Expression>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:emitter-val is deprecated.  Use interaction_msgs-msg:emitter instead.")
  (emitter m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <Expression>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:priority-val is deprecated.  Use interaction_msgs-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <Expression>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader interaction_msgs-msg:params-val is deprecated.  Use interaction_msgs-msg:params instead.")
  (params m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Expression>)))
    "Constants for message type '<Expression>"
  '((:LOW_PRIORITY . 0)
    (:MEDIUM_PRIORITY . 1)
    (:HIGH_PRIORITY . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Expression)))
    "Constants for message type 'Expression"
  '((:LOW_PRIORITY . 0)
    (:MEDIUM_PRIORITY . 1)
    (:HIGH_PRIORITY . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Expression>) ostream)
  "Serializes a message object of type '<Expression>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'when))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'when))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'emitter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'emitter))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'priority)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Expression>) istream)
  "Deserializes a message object of type '<Expression>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'when) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'when) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'common_msgs-msg:KeyValuePair))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Expression>)))
  "Returns string type for a message object of type '<Expression>"
  "interaction_msgs/Expression")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Expression)))
  "Returns string type for a message object of type 'Expression"
  "interaction_msgs/Expression")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Expression>)))
  "Returns md5sum for a message object of type '<Expression>"
  "b45886ecb263f01c638736c2ca6ee2e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Expression)))
  "Returns md5sum for a message object of type 'Expression"
  "b45886ecb263f01c638736c2ca6ee2e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Expression>)))
  "Returns full string definition for message of type '<Expression>"
  (cl:format cl:nil "Header header~%~%string name~%string when~%string id~%string emitter~%~%uint16 LOW_PRIORITY = 0~%uint16 MEDIUM_PRIORITY = 1~%uint16 HIGH_PRIORITY = 2~%~%#priority level~%uint16 priority~%~%common_msgs/KeyValuePair[] params~% ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: common_msgs/KeyValuePair~%#use standard header~%#Header header~%~%#string values for key and its value~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Expression)))
  "Returns full string definition for message of type 'Expression"
  (cl:format cl:nil "Header header~%~%string name~%string when~%string id~%string emitter~%~%uint16 LOW_PRIORITY = 0~%uint16 MEDIUM_PRIORITY = 1~%uint16 HIGH_PRIORITY = 2~%~%#priority level~%uint16 priority~%~%common_msgs/KeyValuePair[] params~% ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: common_msgs/KeyValuePair~%#use standard header~%#Header header~%~%#string values for key and its value~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Expression>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'when))
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'emitter))
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Expression>))
  "Converts a ROS message object to a list"
  (cl:list 'Expression
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':when (when msg))
    (cl:cons ':id (id msg))
    (cl:cons ':emitter (emitter msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':params (params msg))
))
