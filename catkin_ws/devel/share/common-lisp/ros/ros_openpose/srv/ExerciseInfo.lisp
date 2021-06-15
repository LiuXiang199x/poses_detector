; Auto-generated. Do not edit!


(cl:in-package ros_openpose-srv)


;//! \htmlinclude ExerciseInfo-request.msg.html

(cl:defclass <ExerciseInfo-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ExerciseInfo-request (<ExerciseInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExerciseInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExerciseInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_openpose-srv:<ExerciseInfo-request> is deprecated: use ros_openpose-srv:ExerciseInfo-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ExerciseInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_openpose-srv:name-val is deprecated.  Use ros_openpose-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ExerciseInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_openpose-srv:data-val is deprecated.  Use ros_openpose-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExerciseInfo-request>) ostream)
  "Serializes a message object of type '<ExerciseInfo-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExerciseInfo-request>) istream)
  "Deserializes a message object of type '<ExerciseInfo-request>"
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
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExerciseInfo-request>)))
  "Returns string type for a service object of type '<ExerciseInfo-request>"
  "ros_openpose/ExerciseInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExerciseInfo-request)))
  "Returns string type for a service object of type 'ExerciseInfo-request"
  "ros_openpose/ExerciseInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExerciseInfo-request>)))
  "Returns md5sum for a message object of type '<ExerciseInfo-request>"
  "7e305d1866417cb28d7a7f5697b48950")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExerciseInfo-request)))
  "Returns md5sum for a message object of type 'ExerciseInfo-request"
  "7e305d1866417cb28d7a7f5697b48950")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExerciseInfo-request>)))
  "Returns full string definition for message of type '<ExerciseInfo-request>"
  (cl:format cl:nil "string name~%float32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExerciseInfo-request)))
  "Returns full string definition for message of type 'ExerciseInfo-request"
  (cl:format cl:nil "string name~%float32[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExerciseInfo-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExerciseInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExerciseInfo-request
    (cl:cons ':name (name msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude ExerciseInfo-response.msg.html

(cl:defclass <ExerciseInfo-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass ExerciseInfo-response (<ExerciseInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExerciseInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExerciseInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_openpose-srv:<ExerciseInfo-response> is deprecated: use ros_openpose-srv:ExerciseInfo-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ExerciseInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_openpose-srv:result-val is deprecated.  Use ros_openpose-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExerciseInfo-response>) ostream)
  "Serializes a message object of type '<ExerciseInfo-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExerciseInfo-response>) istream)
  "Deserializes a message object of type '<ExerciseInfo-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExerciseInfo-response>)))
  "Returns string type for a service object of type '<ExerciseInfo-response>"
  "ros_openpose/ExerciseInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExerciseInfo-response)))
  "Returns string type for a service object of type 'ExerciseInfo-response"
  "ros_openpose/ExerciseInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExerciseInfo-response>)))
  "Returns md5sum for a message object of type '<ExerciseInfo-response>"
  "7e305d1866417cb28d7a7f5697b48950")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExerciseInfo-response)))
  "Returns md5sum for a message object of type 'ExerciseInfo-response"
  "7e305d1866417cb28d7a7f5697b48950")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExerciseInfo-response>)))
  "Returns full string definition for message of type '<ExerciseInfo-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExerciseInfo-response)))
  "Returns full string definition for message of type 'ExerciseInfo-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExerciseInfo-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExerciseInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExerciseInfo-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExerciseInfo)))
  'ExerciseInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExerciseInfo)))
  'ExerciseInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExerciseInfo)))
  "Returns string type for a service object of type '<ExerciseInfo>"
  "ros_openpose/ExerciseInfo")