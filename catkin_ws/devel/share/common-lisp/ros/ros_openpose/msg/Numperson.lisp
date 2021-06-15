; Auto-generated. Do not edit!


(cl:in-package ros_openpose-msg)


;//! \htmlinclude Numperson.msg.html

(cl:defclass <Numperson> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass Numperson (<Numperson>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Numperson>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Numperson)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_openpose-msg:<Numperson> is deprecated: use ros_openpose-msg:Numperson instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Numperson>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_openpose-msg:data-val is deprecated.  Use ros_openpose-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Numperson>) ostream)
  "Serializes a message object of type '<Numperson>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Numperson>) istream)
  "Deserializes a message object of type '<Numperson>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Numperson>)))
  "Returns string type for a message object of type '<Numperson>"
  "ros_openpose/Numperson")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Numperson)))
  "Returns string type for a message object of type 'Numperson"
  "ros_openpose/Numperson")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Numperson>)))
  "Returns md5sum for a message object of type '<Numperson>"
  "304a39449588c7f8ce2df6e8001c5fce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Numperson)))
  "Returns md5sum for a message object of type 'Numperson"
  "304a39449588c7f8ce2df6e8001c5fce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Numperson>)))
  "Returns full string definition for message of type '<Numperson>"
  (cl:format cl:nil "uint32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Numperson)))
  "Returns full string definition for message of type 'Numperson"
  (cl:format cl:nil "uint32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Numperson>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Numperson>))
  "Converts a ROS message object to a list"
  (cl:list 'Numperson
    (cl:cons ':data (data msg))
))
