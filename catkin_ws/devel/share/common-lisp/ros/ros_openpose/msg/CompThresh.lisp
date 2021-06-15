; Auto-generated. Do not edit!


(cl:in-package ros_openpose-msg)


;//! \htmlinclude CompThresh.msg.html

(cl:defclass <CompThresh> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass CompThresh (<CompThresh>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CompThresh>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CompThresh)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_openpose-msg:<CompThresh> is deprecated: use ros_openpose-msg:CompThresh instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <CompThresh>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_openpose-msg:data-val is deprecated.  Use ros_openpose-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CompThresh>) ostream)
  "Serializes a message object of type '<CompThresh>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CompThresh>) istream)
  "Deserializes a message object of type '<CompThresh>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CompThresh>)))
  "Returns string type for a message object of type '<CompThresh>"
  "ros_openpose/CompThresh")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CompThresh)))
  "Returns string type for a message object of type 'CompThresh"
  "ros_openpose/CompThresh")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CompThresh>)))
  "Returns md5sum for a message object of type '<CompThresh>"
  "403a16d9294b908e45c67a6f3c3a5b27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CompThresh)))
  "Returns md5sum for a message object of type 'CompThresh"
  "403a16d9294b908e45c67a6f3c3a5b27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CompThresh>)))
  "Returns full string definition for message of type '<CompThresh>"
  (cl:format cl:nil "bool[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CompThresh)))
  "Returns full string definition for message of type 'CompThresh"
  (cl:format cl:nil "bool[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CompThresh>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CompThresh>))
  "Converts a ROS message object to a list"
  (cl:list 'CompThresh
    (cl:cons ':data (data msg))
))
