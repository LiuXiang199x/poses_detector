; Auto-generated. Do not edit!


(cl:in-package hand_gesture_msgs-msg)


;//! \htmlinclude HandGesture.msg.html

(cl:defclass <HandGesture> (roslisp-msg-protocol:ros-message)
  ((num_fingers
    :reader num_fingers
    :initarg :num_fingers
    :type cl:integer
    :initform 0)
   (gesture
    :reader gesture
    :initarg :gesture
    :type cl:string
    :initform ""))
)

(cl:defclass HandGesture (<HandGesture>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HandGesture>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HandGesture)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_gesture_msgs-msg:<HandGesture> is deprecated: use hand_gesture_msgs-msg:HandGesture instead.")))

(cl:ensure-generic-function 'num_fingers-val :lambda-list '(m))
(cl:defmethod num_fingers-val ((m <HandGesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_gesture_msgs-msg:num_fingers-val is deprecated.  Use hand_gesture_msgs-msg:num_fingers instead.")
  (num_fingers m))

(cl:ensure-generic-function 'gesture-val :lambda-list '(m))
(cl:defmethod gesture-val ((m <HandGesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_gesture_msgs-msg:gesture-val is deprecated.  Use hand_gesture_msgs-msg:gesture instead.")
  (gesture m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HandGesture>) ostream)
  "Serializes a message object of type '<HandGesture>"
  (cl:let* ((signed (cl:slot-value msg 'num_fingers)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gesture))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gesture))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HandGesture>) istream)
  "Deserializes a message object of type '<HandGesture>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_fingers) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gesture) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gesture) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HandGesture>)))
  "Returns string type for a message object of type '<HandGesture>"
  "hand_gesture_msgs/HandGesture")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandGesture)))
  "Returns string type for a message object of type 'HandGesture"
  "hand_gesture_msgs/HandGesture")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HandGesture>)))
  "Returns md5sum for a message object of type '<HandGesture>"
  "c6c2f03cb1294d5c9b939b4f26a1ddd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HandGesture)))
  "Returns md5sum for a message object of type 'HandGesture"
  "c6c2f03cb1294d5c9b939b4f26a1ddd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HandGesture>)))
  "Returns full string definition for message of type '<HandGesture>"
  (cl:format cl:nil "# Message to publish a hand gesture~%~%int32 num_fingers~%string gesture~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HandGesture)))
  "Returns full string definition for message of type 'HandGesture"
  (cl:format cl:nil "# Message to publish a hand gesture~%~%int32 num_fingers~%string gesture~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HandGesture>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'gesture))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HandGesture>))
  "Converts a ROS message object to a list"
  (cl:list 'HandGesture
    (cl:cons ':num_fingers (num_fingers msg))
    (cl:cons ':gesture (gesture msg))
))
