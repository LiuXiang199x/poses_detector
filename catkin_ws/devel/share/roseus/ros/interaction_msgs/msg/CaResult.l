;; Auto-generated. Do not edit!


(when (boundp 'interaction_msgs::CaResult)
  (if (not (find-package "INTERACTION_MSGS"))
    (make-package "INTERACTION_MSGS"))
  (shadow 'CaResult (find-package "INTERACTION_MSGS")))
(unless (find-package "INTERACTION_MSGS::CARESULT")
  (make-package "INTERACTION_MSGS::CARESULT"))

(in-package "ROS")
;;//! \htmlinclude CaResult.msg.html
(if (not (find-package "COMMON_MSGS"))
  (ros::roseus-add-msgs "common_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass interaction_msgs::CaResult
  :super ros::object
  :slots (_header _ca_name _emitter _result _values ))

(defmethod interaction_msgs::CaResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ca_name __ca_name) "")
    ((:emitter __emitter) "")
    ((:result __result) "")
    ((:values __values) (let (r) (dotimes (i 0) (push (instance common_msgs::KeyValuePair :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ca_name (string __ca_name))
   (setq _emitter (string __emitter))
   (setq _result (string __result))
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
  (:emitter
   (&optional __emitter)
   (if __emitter (setq _emitter __emitter)) _emitter)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
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
    ;; string _emitter
    4 (length _emitter)
    ;; string _result
    4 (length _result)
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
     ;; string _emitter
       (write-long (length _emitter) s) (princ _emitter s)
     ;; string _result
       (write-long (length _result) s) (princ _result s)
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
   ;; string _emitter
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _emitter (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get interaction_msgs::CaResult :md5sum-) "1fb08cd51b312571456f98845a10c69a")
(setf (get interaction_msgs::CaResult :datatype-) "interaction_msgs/CaResult")
(setf (get interaction_msgs::CaResult :definition-)
      "#use standard header
Header header

string ca_name
string emitter

#Result of the execution
string result

#Key-value array: information required by the applications
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



(provide :interaction_msgs/CaResult "1fb08cd51b312571456f98845a10c69a")


