;; Auto-generated. Do not edit!


(when (boundp 'interaction_msgs::Expression)
  (if (not (find-package "INTERACTION_MSGS"))
    (make-package "INTERACTION_MSGS"))
  (shadow 'Expression (find-package "INTERACTION_MSGS")))
(unless (find-package "INTERACTION_MSGS::EXPRESSION")
  (make-package "INTERACTION_MSGS::EXPRESSION"))

(in-package "ROS")
;;//! \htmlinclude Expression.msg.html
(if (not (find-package "COMMON_MSGS"))
  (ros::roseus-add-msgs "common_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*LOW_PRIORITY*" (find-package "INTERACTION_MSGS::EXPRESSION"))
(shadow '*LOW_PRIORITY* (find-package "INTERACTION_MSGS::EXPRESSION"))
(defconstant interaction_msgs::Expression::*LOW_PRIORITY* 0)
(intern "*MEDIUM_PRIORITY*" (find-package "INTERACTION_MSGS::EXPRESSION"))
(shadow '*MEDIUM_PRIORITY* (find-package "INTERACTION_MSGS::EXPRESSION"))
(defconstant interaction_msgs::Expression::*MEDIUM_PRIORITY* 1)
(intern "*HIGH_PRIORITY*" (find-package "INTERACTION_MSGS::EXPRESSION"))
(shadow '*HIGH_PRIORITY* (find-package "INTERACTION_MSGS::EXPRESSION"))
(defconstant interaction_msgs::Expression::*HIGH_PRIORITY* 2)
(defclass interaction_msgs::Expression
  :super ros::object
  :slots (_header _name _when _id _emitter _priority _params ))

(defmethod interaction_msgs::Expression
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:when __when) "")
    ((:id __id) "")
    ((:emitter __emitter) "")
    ((:priority __priority) 0)
    ((:params __params) (let (r) (dotimes (i 0) (push (instance common_msgs::KeyValuePair :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _when (string __when))
   (setq _id (string __id))
   (setq _emitter (string __emitter))
   (setq _priority (round __priority))
   (setq _params __params)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:when
   (&optional __when)
   (if __when (setq _when __when)) _when)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:emitter
   (&optional __emitter)
   (if __emitter (setq _emitter __emitter)) _emitter)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:params
   (&rest __params)
   (if (keywordp (car __params))
       (send* _params __params)
     (progn
       (if __params (setq _params (car __params)))
       _params)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; string _when
    4 (length _when)
    ;; string _id
    4 (length _id)
    ;; string _emitter
    4 (length _emitter)
    ;; uint16 _priority
    2
    ;; common_msgs/KeyValuePair[] _params
    (apply #'+ (send-all _params :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _when
       (write-long (length _when) s) (princ _when s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _emitter
       (write-long (length _emitter) s) (princ _emitter s)
     ;; uint16 _priority
       (write-word _priority s)
     ;; common_msgs/KeyValuePair[] _params
     (write-long (length _params) s)
     (dolist (elem _params)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _when
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _when (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _emitter
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _emitter (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _priority
     (setq _priority (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; common_msgs/KeyValuePair[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (let (r) (dotimes (i n) (push (instance common_msgs::KeyValuePair :init) r)) r))
     (dolist (elem- _params)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get interaction_msgs::Expression :md5sum-) "b45886ecb263f01c638736c2ca6ee2e7")
(setf (get interaction_msgs::Expression :datatype-) "interaction_msgs/Expression")
(setf (get interaction_msgs::Expression :definition-)
      "Header header

string name
string when
string id
string emitter

uint16 LOW_PRIORITY = 0
uint16 MEDIUM_PRIORITY = 1
uint16 HIGH_PRIORITY = 2

#priority level
uint16 priority

common_msgs/KeyValuePair[] params
 

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



(provide :interaction_msgs/Expression "b45886ecb263f01c638736c2ca6ee2e7")


