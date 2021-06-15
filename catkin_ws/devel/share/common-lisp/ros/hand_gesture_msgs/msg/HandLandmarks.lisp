; Auto-generated. Do not edit!


(cl:in-package hand_gesture_msgs-msg)


;//! \htmlinclude HandLandmarks.msg.html

(cl:defclass <HandLandmarks> (roslisp-msg-protocol:ros-message)
  ((landmarks
    :reader landmarks
    :initarg :landmarks
    :type (cl:vector hand_gesture_msgs-msg:HandLandmark)
   :initform (cl:make-array 0 :element-type 'hand_gesture_msgs-msg:HandLandmark :initial-element (cl:make-instance 'hand_gesture_msgs-msg:HandLandmark))))
)

(cl:defclass HandLandmarks (<HandLandmarks>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HandLandmarks>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HandLandmarks)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_gesture_msgs-msg:<HandLandmarks> is deprecated: use hand_gesture_msgs-msg:HandLandmarks instead.")))

(cl:ensure-generic-function 'landmarks-val :lambda-list '(m))
(cl:defmethod landmarks-val ((m <HandLandmarks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_gesture_msgs-msg:landmarks-val is deprecated.  Use hand_gesture_msgs-msg:landmarks instead.")
  (landmarks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HandLandmarks>) ostream)
  "Serializes a message object of type '<HandLandmarks>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'landmarks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'landmarks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HandLandmarks>) istream)
  "Deserializes a message object of type '<HandLandmarks>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'landmarks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'landmarks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hand_gesture_msgs-msg:HandLandmark))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HandLandmarks>)))
  "Returns string type for a message object of type '<HandLandmarks>"
  "hand_gesture_msgs/HandLandmarks")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandLandmarks)))
  "Returns string type for a message object of type 'HandLandmarks"
  "hand_gesture_msgs/HandLandmarks")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HandLandmarks>)))
  "Returns md5sum for a message object of type '<HandLandmarks>"
  "2f0322f1ef8324746d3ce6a203bcab22")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HandLandmarks)))
  "Returns md5sum for a message object of type 'HandLandmarks"
  "2f0322f1ef8324746d3ce6a203bcab22")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HandLandmarks>)))
  "Returns full string definition for message of type '<HandLandmarks>"
  (cl:format cl:nil "# This message represents a set of hand landmarks, each having two coordinates, a number and a name assigned to it (see README.md for more info)~%~%HandLandmark[] landmarks~%================================================================================~%MSG: hand_gesture_msgs/HandLandmark~%# This message represents a single hand landmark~%~%int32 number  # from 0 to 20~%string name  # see README.md for more info~%float32[] coordinates  # coordinates x and y~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HandLandmarks)))
  "Returns full string definition for message of type 'HandLandmarks"
  (cl:format cl:nil "# This message represents a set of hand landmarks, each having two coordinates, a number and a name assigned to it (see README.md for more info)~%~%HandLandmark[] landmarks~%================================================================================~%MSG: hand_gesture_msgs/HandLandmark~%# This message represents a single hand landmark~%~%int32 number  # from 0 to 20~%string name  # see README.md for more info~%float32[] coordinates  # coordinates x and y~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HandLandmarks>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'landmarks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HandLandmarks>))
  "Converts a ROS message object to a list"
  (cl:list 'HandLandmarks
    (cl:cons ':landmarks (landmarks msg))
))
