; Auto-generated. Do not edit!


(cl:in-package etts_msgs-msg)


;//! \htmlinclude UtteranceFeedback.msg.html

(cl:defclass <UtteranceFeedback> (roslisp-msg-protocol:ros-message)
  ((utteranceReceived
    :reader utteranceReceived
    :initarg :utteranceReceived
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UtteranceFeedback (<UtteranceFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UtteranceFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UtteranceFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name etts_msgs-msg:<UtteranceFeedback> is deprecated: use etts_msgs-msg:UtteranceFeedback instead.")))

(cl:ensure-generic-function 'utteranceReceived-val :lambda-list '(m))
(cl:defmethod utteranceReceived-val ((m <UtteranceFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader etts_msgs-msg:utteranceReceived-val is deprecated.  Use etts_msgs-msg:utteranceReceived instead.")
  (utteranceReceived m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UtteranceFeedback>) ostream)
  "Serializes a message object of type '<UtteranceFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'utteranceReceived) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UtteranceFeedback>) istream)
  "Deserializes a message object of type '<UtteranceFeedback>"
    (cl:setf (cl:slot-value msg 'utteranceReceived) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UtteranceFeedback>)))
  "Returns string type for a message object of type '<UtteranceFeedback>"
  "etts_msgs/UtteranceFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UtteranceFeedback)))
  "Returns string type for a message object of type 'UtteranceFeedback"
  "etts_msgs/UtteranceFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UtteranceFeedback>)))
  "Returns md5sum for a message object of type '<UtteranceFeedback>"
  "f93db1cfa40fa25f3ce813f87e25315d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UtteranceFeedback)))
  "Returns md5sum for a message object of type 'UtteranceFeedback"
  "f93db1cfa40fa25f3ce813f87e25315d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UtteranceFeedback>)))
  "Returns full string definition for message of type '<UtteranceFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Feedback about the progress of the action~%bool utteranceReceived~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UtteranceFeedback)))
  "Returns full string definition for message of type 'UtteranceFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Feedback about the progress of the action~%bool utteranceReceived~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UtteranceFeedback>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UtteranceFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'UtteranceFeedback
    (cl:cons ':utteranceReceived (utteranceReceived msg))
))
