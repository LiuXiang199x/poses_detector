; Auto-generated. Do not edit!


(cl:in-package ros_openpose-msg)


;//! \htmlinclude Gesture.msg.html

(cl:defclass <Gesture> (roslisp-msg-protocol:ros-message)
  ((lefthand
    :reader lefthand
    :initarg :lefthand
    :type cl:string
    :initform "")
   (righthand
    :reader righthand
    :initarg :righthand
    :type cl:string
    :initform "")
   (body
    :reader body
    :initarg :body
    :type cl:string
    :initform ""))
)

(cl:defclass Gesture (<Gesture>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gesture>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gesture)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_openpose-msg:<Gesture> is deprecated: use ros_openpose-msg:Gesture instead.")))

(cl:ensure-generic-function 'lefthand-val :lambda-list '(m))
(cl:defmethod lefthand-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_openpose-msg:lefthand-val is deprecated.  Use ros_openpose-msg:lefthand instead.")
  (lefthand m))

(cl:ensure-generic-function 'righthand-val :lambda-list '(m))
(cl:defmethod righthand-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_openpose-msg:righthand-val is deprecated.  Use ros_openpose-msg:righthand instead.")
  (righthand m))

(cl:ensure-generic-function 'body-val :lambda-list '(m))
(cl:defmethod body-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_openpose-msg:body-val is deprecated.  Use ros_openpose-msg:body instead.")
  (body m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gesture>) ostream)
  "Serializes a message object of type '<Gesture>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lefthand))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lefthand))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'righthand))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'righthand))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'body))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'body))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gesture>) istream)
  "Deserializes a message object of type '<Gesture>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lefthand) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lefthand) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'righthand) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'righthand) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'body) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'body) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gesture>)))
  "Returns string type for a message object of type '<Gesture>"
  "ros_openpose/Gesture")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gesture)))
  "Returns string type for a message object of type 'Gesture"
  "ros_openpose/Gesture")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gesture>)))
  "Returns md5sum for a message object of type '<Gesture>"
  "bd533947e2ddb7675745edef8ae88c25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gesture)))
  "Returns md5sum for a message object of type 'Gesture"
  "bd533947e2ddb7675745edef8ae88c25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gesture>)))
  "Returns full string definition for message of type '<Gesture>"
  (cl:format cl:nil "string lefthand~%string righthand~%string body~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gesture)))
  "Returns full string definition for message of type 'Gesture"
  (cl:format cl:nil "string lefthand~%string righthand~%string body~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gesture>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'lefthand))
     4 (cl:length (cl:slot-value msg 'righthand))
     4 (cl:length (cl:slot-value msg 'body))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gesture>))
  "Converts a ROS message object to a list"
  (cl:list 'Gesture
    (cl:cons ':lefthand (lefthand msg))
    (cl:cons ':righthand (righthand msg))
    (cl:cons ':body (body msg))
))
