; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude KeyValuePairArray.msg.html

(cl:defclass <KeyValuePairArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (array
    :reader array
    :initarg :array
    :type (cl:vector common_msgs-msg:KeyValuePair)
   :initform (cl:make-array 0 :element-type 'common_msgs-msg:KeyValuePair :initial-element (cl:make-instance 'common_msgs-msg:KeyValuePair))))
)

(cl:defclass KeyValuePairArray (<KeyValuePairArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeyValuePairArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeyValuePairArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<KeyValuePairArray> is deprecated: use common_msgs-msg:KeyValuePairArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <KeyValuePairArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:header-val is deprecated.  Use common_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'array-val :lambda-list '(m))
(cl:defmethod array-val ((m <KeyValuePairArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:array-val is deprecated.  Use common_msgs-msg:array instead.")
  (array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeyValuePairArray>) ostream)
  "Serializes a message object of type '<KeyValuePairArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeyValuePairArray>) istream)
  "Deserializes a message object of type '<KeyValuePairArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'common_msgs-msg:KeyValuePair))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeyValuePairArray>)))
  "Returns string type for a message object of type '<KeyValuePairArray>"
  "common_msgs/KeyValuePairArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeyValuePairArray)))
  "Returns string type for a message object of type 'KeyValuePairArray"
  "common_msgs/KeyValuePairArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeyValuePairArray>)))
  "Returns md5sum for a message object of type '<KeyValuePairArray>"
  "5dd488bd18c5364c2c19560b9b993c8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeyValuePairArray)))
  "Returns md5sum for a message object of type 'KeyValuePairArray"
  "5dd488bd18c5364c2c19560b9b993c8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeyValuePairArray>)))
  "Returns full string definition for message of type '<KeyValuePairArray>"
  (cl:format cl:nil "#use standard header~%Header header~%~%#Array of KeyValuePair data structure~%KeyValuePair[] array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: common_msgs/KeyValuePair~%#use standard header~%#Header header~%~%#string values for key and its value~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeyValuePairArray)))
  "Returns full string definition for message of type 'KeyValuePairArray"
  (cl:format cl:nil "#use standard header~%Header header~%~%#Array of KeyValuePair data structure~%KeyValuePair[] array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: common_msgs/KeyValuePair~%#use standard header~%#Header header~%~%#string values for key and its value~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeyValuePairArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeyValuePairArray>))
  "Converts a ROS message object to a list"
  (cl:list 'KeyValuePairArray
    (cl:cons ':header (header msg))
    (cl:cons ':array (array msg))
))
