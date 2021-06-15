; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude KeyBoolPair.msg.html

(cl:defclass <KeyBoolPair> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass KeyBoolPair (<KeyBoolPair>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeyBoolPair>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeyBoolPair)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<KeyBoolPair> is deprecated: use common_msgs-msg:KeyBoolPair instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <KeyBoolPair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:key-val is deprecated.  Use common_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <KeyBoolPair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:value-val is deprecated.  Use common_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeyBoolPair>) ostream)
  "Serializes a message object of type '<KeyBoolPair>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeyBoolPair>) istream)
  "Deserializes a message object of type '<KeyBoolPair>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeyBoolPair>)))
  "Returns string type for a message object of type '<KeyBoolPair>"
  "common_msgs/KeyBoolPair")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeyBoolPair)))
  "Returns string type for a message object of type 'KeyBoolPair"
  "common_msgs/KeyBoolPair")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeyBoolPair>)))
  "Returns md5sum for a message object of type '<KeyBoolPair>"
  "4687d6999a553be692d35fbb1253c5d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeyBoolPair)))
  "Returns md5sum for a message object of type 'KeyBoolPair"
  "4687d6999a553be692d35fbb1253c5d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeyBoolPair>)))
  "Returns full string definition for message of type '<KeyBoolPair>"
  (cl:format cl:nil "#use standard header~%#Header header~%~%#string values for key and its value (bool)~%string key~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeyBoolPair)))
  "Returns full string definition for message of type 'KeyBoolPair"
  (cl:format cl:nil "#use standard header~%#Header header~%~%#string values for key and its value (bool)~%string key~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeyBoolPair>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'key))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeyBoolPair>))
  "Converts a ROS message object to a list"
  (cl:list 'KeyBoolPair
    (cl:cons ':key (key msg))
    (cl:cons ':value (value msg))
))
