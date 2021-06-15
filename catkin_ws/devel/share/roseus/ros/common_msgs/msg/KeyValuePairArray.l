;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::KeyValuePairArray)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'KeyValuePairArray (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::KEYVALUEPAIRARRAY")
  (make-package "COMMON_MSGS::KEYVALUEPAIRARRAY"))

(in-package "ROS")
;;//! \htmlinclude KeyValuePairArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass common_msgs::KeyValuePairArray
  :super ros::object
  :slots (_header _array ))

(defmethod common_msgs::KeyValuePairArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:array __array) (let (r) (dotimes (i 0) (push (instance common_msgs::KeyValuePair :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _array __array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:array
   (&rest __array)
   (if (keywordp (car __array))
       (send* _array __array)
     (progn
       (if __array (setq _array (car __array)))
       _array)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; common_msgs/KeyValuePair[] _array
    (apply #'+ (send-all _array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; common_msgs/KeyValuePair[] _array
     (write-long (length _array) s)
     (dolist (elem _array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; common_msgs/KeyValuePair[] _array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _array (let (r) (dotimes (i n) (push (instance common_msgs::KeyValuePair :init) r)) r))
     (dolist (elem- _array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get common_msgs::KeyValuePairArray :md5sum-) "5dd488bd18c5364c2c19560b9b993c8c")
(setf (get common_msgs::KeyValuePairArray :datatype-) "common_msgs/KeyValuePairArray")
(setf (get common_msgs::KeyValuePairArray :definition-)
      "#use standard header
Header header

#Array of KeyValuePair data structure
KeyValuePair[] array

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: common_msgs/KeyValuePair
#use standard header
#Header header

#string values for key and its value
string key
string value

")



(provide :common_msgs/KeyValuePairArray "5dd488bd18c5364c2c19560b9b993c8c")


