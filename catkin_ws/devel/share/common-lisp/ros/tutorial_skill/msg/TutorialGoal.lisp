; Auto-generated. Do not edit!


(cl:in-package tutorial_skill-msg)


;//! \htmlinclude TutorialGoal.msg.html

(cl:defclass <TutorialGoal> (roslisp-msg-protocol:ros-message)
  ((max_time
    :reader max_time
    :initarg :max_time
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TutorialGoal (<TutorialGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TutorialGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TutorialGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tutorial_skill-msg:<TutorialGoal> is deprecated: use tutorial_skill-msg:TutorialGoal instead.")))

(cl:ensure-generic-function 'max_time-val :lambda-list '(m))
(cl:defmethod max_time-val ((m <TutorialGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial_skill-msg:max_time-val is deprecated.  Use tutorial_skill-msg:max_time instead.")
  (max_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TutorialGoal>) ostream)
  "Serializes a message object of type '<TutorialGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_time)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TutorialGoal>) istream)
  "Deserializes a message object of type '<TutorialGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_time)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TutorialGoal>)))
  "Returns string type for a message object of type '<TutorialGoal>"
  "tutorial_skill/TutorialGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TutorialGoal)))
  "Returns string type for a message object of type 'TutorialGoal"
  "tutorial_skill/TutorialGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TutorialGoal>)))
  "Returns md5sum for a message object of type '<TutorialGoal>"
  "c409dd1e90c9be656927fb6838928cb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TutorialGoal)))
  "Returns md5sum for a message object of type 'TutorialGoal"
  "c409dd1e90c9be656927fb6838928cb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TutorialGoal>)))
  "Returns full string definition for message of type '<TutorialGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 max_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TutorialGoal)))
  "Returns full string definition for message of type 'TutorialGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 max_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TutorialGoal>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TutorialGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'TutorialGoal
    (cl:cons ':max_time (max_time msg))
))
