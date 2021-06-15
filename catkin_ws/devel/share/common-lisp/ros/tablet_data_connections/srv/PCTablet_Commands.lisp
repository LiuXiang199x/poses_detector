; Auto-generated. Do not edit!


(cl:in-package tablet_data_connections-srv)


;//! \htmlinclude PCTablet_Commands-request.msg.html

(cl:defclass <PCTablet_Commands-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass PCTablet_Commands-request (<PCTablet_Commands-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PCTablet_Commands-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PCTablet_Commands-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tablet_data_connections-srv:<PCTablet_Commands-request> is deprecated: use tablet_data_connections-srv:PCTablet_Commands-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <PCTablet_Commands-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tablet_data_connections-srv:command-val is deprecated.  Use tablet_data_connections-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PCTablet_Commands-request>) ostream)
  "Serializes a message object of type '<PCTablet_Commands-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PCTablet_Commands-request>) istream)
  "Deserializes a message object of type '<PCTablet_Commands-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PCTablet_Commands-request>)))
  "Returns string type for a service object of type '<PCTablet_Commands-request>"
  "tablet_data_connections/PCTablet_CommandsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PCTablet_Commands-request)))
  "Returns string type for a service object of type 'PCTablet_Commands-request"
  "tablet_data_connections/PCTablet_CommandsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PCTablet_Commands-request>)))
  "Returns md5sum for a message object of type '<PCTablet_Commands-request>"
  "9b3d578d85131ed0b96255aaed77a481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PCTablet_Commands-request)))
  "Returns md5sum for a message object of type 'PCTablet_Commands-request"
  "9b3d578d85131ed0b96255aaed77a481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PCTablet_Commands-request>)))
  "Returns full string definition for message of type '<PCTablet_Commands-request>"
  (cl:format cl:nil "string command~%~%~%~%~%~%~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PCTablet_Commands-request)))
  "Returns full string definition for message of type 'PCTablet_Commands-request"
  (cl:format cl:nil "string command~%~%~%~%~%~%~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PCTablet_Commands-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PCTablet_Commands-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PCTablet_Commands-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude PCTablet_Commands-response.msg.html

(cl:defclass <PCTablet_Commands-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0)
   (info
    :reader info
    :initarg :info
    :type cl:string
    :initform ""))
)

(cl:defclass PCTablet_Commands-response (<PCTablet_Commands-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PCTablet_Commands-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PCTablet_Commands-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tablet_data_connections-srv:<PCTablet_Commands-response> is deprecated: use tablet_data_connections-srv:PCTablet_Commands-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <PCTablet_Commands-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tablet_data_connections-srv:result-val is deprecated.  Use tablet_data_connections-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <PCTablet_Commands-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tablet_data_connections-srv:info-val is deprecated.  Use tablet_data_connections-srv:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PCTablet_Commands-response>) ostream)
  "Serializes a message object of type '<PCTablet_Commands-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PCTablet_Commands-response>) istream)
  "Deserializes a message object of type '<PCTablet_Commands-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PCTablet_Commands-response>)))
  "Returns string type for a service object of type '<PCTablet_Commands-response>"
  "tablet_data_connections/PCTablet_CommandsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PCTablet_Commands-response)))
  "Returns string type for a service object of type 'PCTablet_Commands-response"
  "tablet_data_connections/PCTablet_CommandsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PCTablet_Commands-response>)))
  "Returns md5sum for a message object of type '<PCTablet_Commands-response>"
  "9b3d578d85131ed0b96255aaed77a481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PCTablet_Commands-response)))
  "Returns md5sum for a message object of type 'PCTablet_Commands-response"
  "9b3d578d85131ed0b96255aaed77a481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PCTablet_Commands-response>)))
  "Returns full string definition for message of type '<PCTablet_Commands-response>"
  (cl:format cl:nil "int8 result~%string info~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PCTablet_Commands-response)))
  "Returns full string definition for message of type 'PCTablet_Commands-response"
  (cl:format cl:nil "int8 result~%string info~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PCTablet_Commands-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PCTablet_Commands-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PCTablet_Commands-response
    (cl:cons ':result (result msg))
    (cl:cons ':info (info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PCTablet_Commands)))
  'PCTablet_Commands-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PCTablet_Commands)))
  'PCTablet_Commands-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PCTablet_Commands)))
  "Returns string type for a service object of type '<PCTablet_Commands>"
  "tablet_data_connections/PCTablet_Commands")