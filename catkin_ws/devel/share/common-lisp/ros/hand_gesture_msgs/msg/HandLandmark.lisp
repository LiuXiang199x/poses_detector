; Auto-generated. Do not edit!


(cl:in-package hand_gesture_msgs-msg)


;//! \htmlinclude HandLandmark.msg.html

(cl:defclass <HandLandmark> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (coordinates
    :reader coordinates
    :initarg :coordinates
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass HandLandmark (<HandLandmark>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HandLandmark>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HandLandmark)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_gesture_msgs-msg:<HandLandmark> is deprecated: use hand_gesture_msgs-msg:HandLandmark instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <HandLandmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_gesture_msgs-msg:number-val is deprecated.  Use hand_gesture_msgs-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <HandLandmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_gesture_msgs-msg:name-val is deprecated.  Use hand_gesture_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'coordinates-val :lambda-list '(m))
(cl:defmethod coordinates-val ((m <HandLandmark>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_gesture_msgs-msg:coordinates-val is deprecated.  Use hand_gesture_msgs-msg:coordinates instead.")
  (coordinates m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HandLandmark>) ostream)
  "Serializes a message object of type '<HandLandmark>"
  (cl:let* ((signed (cl:slot-value msg 'number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coordinates))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'coordinates))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HandLandmark>) istream)
  "Deserializes a message object of type '<HandLandmark>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coordinates) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coordinates)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HandLandmark>)))
  "Returns string type for a message object of type '<HandLandmark>"
  "hand_gesture_msgs/HandLandmark")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandLandmark)))
  "Returns string type for a message object of type 'HandLandmark"
  "hand_gesture_msgs/HandLandmark")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HandLandmark>)))
  "Returns md5sum for a message object of type '<HandLandmark>"
  "af09f7d0e0a50b4df9d66c15e2f8a9e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HandLandmark)))
  "Returns md5sum for a message object of type 'HandLandmark"
  "af09f7d0e0a50b4df9d66c15e2f8a9e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HandLandmark>)))
  "Returns full string definition for message of type '<HandLandmark>"
  (cl:format cl:nil "# This message represents a single hand landmark~%~%int32 number  # from 0 to 20~%string name  # see README.md for more info~%float32[] coordinates  # coordinates x and y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HandLandmark)))
  "Returns full string definition for message of type 'HandLandmark"
  (cl:format cl:nil "# This message represents a single hand landmark~%~%int32 number  # from 0 to 20~%string name  # see README.md for more info~%float32[] coordinates  # coordinates x and y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HandLandmark>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coordinates) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HandLandmark>))
  "Converts a ROS message object to a list"
  (cl:list 'HandLandmark
    (cl:cons ':number (number msg))
    (cl:cons ':name (name msg))
    (cl:cons ':coordinates (coordinates msg))
))
