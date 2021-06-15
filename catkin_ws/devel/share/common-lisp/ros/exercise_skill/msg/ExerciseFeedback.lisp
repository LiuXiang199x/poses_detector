; Auto-generated. Do not edit!


(cl:in-package exercise_skill-msg)


;//! \htmlinclude ExerciseFeedback.msg.html

(cl:defclass <ExerciseFeedback> (roslisp-msg-protocol:ros-message)
  ((app_status
    :reader app_status
    :initarg :app_status
    :type cl:string
    :initform "")
   (percentage_completed
    :reader percentage_completed
    :initarg :percentage_completed
    :type cl:fixnum
    :initform 0)
   (engagement
    :reader engagement
    :initarg :engagement
    :type cl:boolean
    :initform cl:nil)
   (response_params
    :reader response_params
    :initarg :response_params
    :type (cl:vector common_msgs-msg:KeyValuePair)
   :initform (cl:make-array 0 :element-type 'common_msgs-msg:KeyValuePair :initial-element (cl:make-instance 'common_msgs-msg:KeyValuePair))))
)

(cl:defclass ExerciseFeedback (<ExerciseFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExerciseFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExerciseFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exercise_skill-msg:<ExerciseFeedback> is deprecated: use exercise_skill-msg:ExerciseFeedback instead.")))

(cl:ensure-generic-function 'app_status-val :lambda-list '(m))
(cl:defmethod app_status-val ((m <ExerciseFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_skill-msg:app_status-val is deprecated.  Use exercise_skill-msg:app_status instead.")
  (app_status m))

(cl:ensure-generic-function 'percentage_completed-val :lambda-list '(m))
(cl:defmethod percentage_completed-val ((m <ExerciseFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_skill-msg:percentage_completed-val is deprecated.  Use exercise_skill-msg:percentage_completed instead.")
  (percentage_completed m))

(cl:ensure-generic-function 'engagement-val :lambda-list '(m))
(cl:defmethod engagement-val ((m <ExerciseFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_skill-msg:engagement-val is deprecated.  Use exercise_skill-msg:engagement instead.")
  (engagement m))

(cl:ensure-generic-function 'response_params-val :lambda-list '(m))
(cl:defmethod response_params-val ((m <ExerciseFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_skill-msg:response_params-val is deprecated.  Use exercise_skill-msg:response_params instead.")
  (response_params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExerciseFeedback>) ostream)
  "Serializes a message object of type '<ExerciseFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'app_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'app_status))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'percentage_completed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'engagement) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'response_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'response_params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExerciseFeedback>) istream)
  "Deserializes a message object of type '<ExerciseFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'app_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'app_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'percentage_completed)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engagement) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'response_params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'response_params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'common_msgs-msg:KeyValuePair))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExerciseFeedback>)))
  "Returns string type for a message object of type '<ExerciseFeedback>"
  "exercise_skill/ExerciseFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExerciseFeedback)))
  "Returns string type for a message object of type 'ExerciseFeedback"
  "exercise_skill/ExerciseFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExerciseFeedback>)))
  "Returns md5sum for a message object of type '<ExerciseFeedback>"
  "dd2a3b825f95b7d9c1ba587b6f0eb46f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExerciseFeedback)))
  "Returns md5sum for a message object of type 'ExerciseFeedback"
  "dd2a3b825f95b7d9c1ba587b6f0eb46f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExerciseFeedback>)))
  "Returns full string definition for message of type '<ExerciseFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string app_status~%uint8 percentage_completed~%bool engagement~%common_msgs/KeyValuePair[] response_params~%~%~%================================================================================~%MSG: common_msgs/KeyValuePair~%#use standard header~%#Header header~%~%#string values for key and its value~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExerciseFeedback)))
  "Returns full string definition for message of type 'ExerciseFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string app_status~%uint8 percentage_completed~%bool engagement~%common_msgs/KeyValuePair[] response_params~%~%~%================================================================================~%MSG: common_msgs/KeyValuePair~%#use standard header~%#Header header~%~%#string values for key and its value~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExerciseFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'app_status))
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'response_params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExerciseFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ExerciseFeedback
    (cl:cons ':app_status (app_status msg))
    (cl:cons ':percentage_completed (percentage_completed msg))
    (cl:cons ':engagement (engagement msg))
    (cl:cons ':response_params (response_params msg))
))
