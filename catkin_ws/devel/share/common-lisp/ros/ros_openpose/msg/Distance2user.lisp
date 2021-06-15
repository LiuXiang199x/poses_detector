; Auto-generated. Do not edit!


(cl:in-package ros_openpose-msg)


;//! \htmlinclude Distance2user.msg.html

(cl:defclass <Distance2user> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass Distance2user (<Distance2user>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Distance2user>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Distance2user)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_openpose-msg:<Distance2user> is deprecated: use ros_openpose-msg:Distance2user instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <Distance2user>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_openpose-msg:distance-val is deprecated.  Use ros_openpose-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Distance2user>) ostream)
  "Serializes a message object of type '<Distance2user>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Distance2user>) istream)
  "Deserializes a message object of type '<Distance2user>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Distance2user>)))
  "Returns string type for a message object of type '<Distance2user>"
  "ros_openpose/Distance2user")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Distance2user)))
  "Returns string type for a message object of type 'Distance2user"
  "ros_openpose/Distance2user")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Distance2user>)))
  "Returns md5sum for a message object of type '<Distance2user>"
  "6e77fb10f0c8b4833ec273aa9ac74459")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Distance2user)))
  "Returns md5sum for a message object of type 'Distance2user"
  "6e77fb10f0c8b4833ec273aa9ac74459")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Distance2user>)))
  "Returns full string definition for message of type '<Distance2user>"
  (cl:format cl:nil "float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Distance2user)))
  "Returns full string definition for message of type 'Distance2user"
  (cl:format cl:nil "float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Distance2user>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Distance2user>))
  "Converts a ROS message object to a list"
  (cl:list 'Distance2user
    (cl:cons ':distance (distance msg))
))
