;; Auto-generated. Do not edit!


(when (boundp 'interaction_msgs::CA)
  (if (not (find-package "INTERACTION_MSGS"))
    (make-package "INTERACTION_MSGS"))
  (shadow 'CA (find-package "INTERACTION_MSGS")))
(unless (find-package "INTERACTION_MSGS::CA")
  (make-package "INTERACTION_MSGS::CA"))

(in-package "ROS")
;;//! \htmlinclude CA.msg.html
(if (not (find-package "COMMON_MSGS"))
  (ros::roseus-add-msgs "common_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*LOW_PRIORITY*" (find-package "INTERACTION_MSGS::CA"))
(shadow '*LOW_PRIORITY* (find-package "INTERACTION_MSGS::CA"))
(defconstant interaction_msgs::CA::*LOW_PRIORITY* 0)
(intern "*MEDIUM_PRIORITY*" (find-package "INTERACTION_MSGS::CA"))
(shadow '*MEDIUM_PRIORITY* (find-package "INTERACTION_MSGS::CA"))
(defconstant interaction_msgs::CA::*MEDIUM_PRIORITY* 1)
(intern "*HIGH_PRIORITY*" (find-package "INTERACTION_MSGS::CA"))
(shadow '*HIGH_PRIORITY* (find-package "INTERACTION_MSGS::CA"))
(defconstant interaction_msgs::CA::*HIGH_PRIORITY* 2)
(defclass interaction_msgs::CA
  :super ros::object
  :slots (_header _ca_name _type _emitter _priority _duration _values ))

(defmethod interaction_msgs::CA
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ca_name __ca_name) "")
    ((:type __type) "")
    ((:emitter __emitter) "")
    ((:priority __priority) 0)
    ((:duration __duration) 0)
    ((:values __values) (let (r) (dotimes (i 0) (push (instance common_msgs::KeyValuePair :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ca_name (string __ca_name))
   (setq _type (string __type))
   (setq _emitter (string __emitter))
   (setq _priority (round __priority))
   (setq _duration (round __duration))
   (setq _values __values)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ca_name
   (&optional __ca_name)
   (if __ca_name (setq _ca_name __ca_name)) _ca_name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:emitter
   (&optional __emitter)
   (if __emitter (setq _emitter __emitter)) _emitter)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:values
   (&rest __values)
   (if (keywordp (car __values))
       (send* _values __values)
     (progn
       (if __values (setq _values (car __values)))
       _values)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _ca_name
    4 (length _ca_name)
    ;; string _type
    4 (length _type)
    ;; string _emitter
    4 (length _emitter)
    ;; uint16 _priority
    2
    ;; uint16 _duration
    2
    ;; common_msgs/KeyValuePair[] _values
    (apply #'+ (send-all _values :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _ca_name
       (write-long (length _ca_name) s) (princ _ca_name s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _emitter
       (write-long (length _emitter) s) (princ _emitter s)
     ;; uint16 _priority
       (write-word _priority s)
     ;; uint16 _duration
       (write-word _duration s)
     ;; common_msgs/KeyValuePair[] _values
     (write-long (length _values) s)
     (dolist (elem _values)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _ca_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ca_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _emitter
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _emitter (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _priority
     (setq _priority (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _duration
     (setq _duration (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; common_msgs/KeyValuePair[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (let (r) (dotimes (i n) (push (instance common_msgs::KeyValuePair :init) r)) r))
     (dolist (elem- _values)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get interaction_msgs::CA :md5sum-) "58e6b2538ab1900bae6b4b2cbe8c5273")
(setf (get interaction_msgs::CA :datatype-) "interaction_msgs/CA")
(setf (get interaction_msgs::CA :definition-)
      "#use standard header
Header header

string ca_name
string type
string emitter

uint16 LOW_PRIORITY = 0
uint16 MEDIUM_PRIORITY = 1
uint16 HIGH_PRIORITY = 2

#priority level
uint16 priority

#duration of the CA
uint16 duration

#Key-value array: ca specific fields
common_msgs/KeyValuePair[] values

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



(provide :interaction_msgs/CA "58e6b2538ab1900bae6b4b2cbe8c5273")


