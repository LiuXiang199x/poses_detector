; Auto-generated. Do not edit!


(cl:in-package exercise_skill-msg)


;//! \htmlinclude ExerciseGoal.msg.html

(cl:defclass <ExerciseGoal> (roslisp-msg-protocol:ros-message)
  ((skill_command
    :reader skill_command
    :initarg :skill_command
    :type cl:string
    :initform "")
   (max_time
    :reader max_time
    :initarg :max_time
    :type cl:fixnum
    :initform 0)
   (number_plays
    :reader number_plays
    :initarg :number_plays
    :type cl:fixnum
    :initform 0)
   (proactivity
    :reader proactivity
    :initarg :proactivity
    :type cl:fixnum
    :initform 0)
   (skill_status
    :reader skill_status
    :initarg :skill_status
    :type cl:string
    :initform ""))
)

(cl:defclass ExerciseGoal (<ExerciseGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExerciseGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExerciseGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exercise_skill-msg:<ExerciseGoal> is deprecated: use exercise_skill-msg:ExerciseGoal instead.")))

(cl:ensure-generic-function 'skill_command-val :lambda-list '(m))
(cl:defmethod skill_command-val ((m <ExerciseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_skill-msg:skill_command-val is deprecated.  Use exercise_skill-msg:skill_command instead.")
  (skill_command m))

(cl:ensure-generic-function 'max_time-val :lambda-list '(m))
(cl:defmethod max_time-val ((m <ExerciseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_skill-msg:max_time-val is deprecated.  Use exercise_skill-msg:max_time instead.")
  (max_time m))

(cl:ensure-generic-function 'number_plays-val :lambda-list '(m))
(cl:defmethod number_plays-val ((m <ExerciseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_skill-msg:number_plays-val is deprecated.  Use exercise_skill-msg:number_plays instead.")
  (number_plays m))

(cl:ensure-generic-function 'proactivity-val :lambda-list '(m))
(cl:defmethod proactivity-val ((m <ExerciseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_skill-msg:proactivity-val is deprecated.  Use exercise_skill-msg:proactivity instead.")
  (proactivity m))

(cl:ensure-generic-function 'skill_status-val :lambda-list '(m))
(cl:defmethod skill_status-val ((m <ExerciseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise_skill-msg:skill_status-val is deprecated.  Use exercise_skill-msg:skill_status instead.")
  (skill_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExerciseGoal>) ostream)
  "Serializes a message object of type '<ExerciseGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'skill_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'skill_command))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_plays)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'number_plays)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'proactivity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'proactivity)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'skill_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'skill_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExerciseGoal>) istream)
  "Deserializes a message object of type '<ExerciseGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'skill_command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'skill_command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_plays)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'number_plays)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'proactivity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'proactivity)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'skill_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'skill_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExerciseGoal>)))
  "Returns string type for a message object of type '<ExerciseGoal>"
  "exercise_skill/ExerciseGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExerciseGoal)))
  "Returns string type for a message object of type 'ExerciseGoal"
  "exercise_skill/ExerciseGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExerciseGoal>)))
  "Returns md5sum for a message object of type '<ExerciseGoal>"
  "483e449faa3be5acb144b338632da130")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExerciseGoal)))
  "Returns md5sum for a message object of type 'ExerciseGoal"
  "483e449faa3be5acb144b338632da130")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExerciseGoal>)))
  "Returns full string definition for message of type '<ExerciseGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string skill_command~%uint16 max_time~%uint16 number_plays~%uint16 proactivity~%string skill_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExerciseGoal)))
  "Returns full string definition for message of type 'ExerciseGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string skill_command~%uint16 max_time~%uint16 number_plays~%uint16 proactivity~%string skill_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExerciseGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'skill_command))
     2
     2
     2
     4 (cl:length (cl:slot-value msg 'skill_status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExerciseGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ExerciseGoal
    (cl:cons ':skill_command (skill_command msg))
    (cl:cons ':max_time (max_time msg))
    (cl:cons ':number_plays (number_plays msg))
    (cl:cons ':proactivity (proactivity msg))
    (cl:cons ':skill_status (skill_status msg))
))
