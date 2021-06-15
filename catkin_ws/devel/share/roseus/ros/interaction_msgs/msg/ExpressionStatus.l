;; Auto-generated. Do not edit!


(when (boundp 'interaction_msgs::ExpressionStatus)
  (if (not (find-package "INTERACTION_MSGS"))
    (make-package "INTERACTION_MSGS"))
  (shadow 'ExpressionStatus (find-package "INTERACTION_MSGS")))
(unless (find-package "INTERACTION_MSGS::EXPRESSIONSTATUS")
  (make-package "INTERACTION_MSGS::EXPRESSIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ExpressionStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass interaction_msgs::ExpressionStatus
  :super ros::object
  :slots (_header _name _id _emitter _result _error ))

(defmethod interaction_msgs::ExpressionStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:id __id) "")
    ((:emitter __emitter) "")
    ((:result __result) "")
    ((:error __error) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _id (string __id))
   (setq _emitter (string __emitter))
   (setq _result (string __result))
   (setq _error (string __error))
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
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:emitter
   (&optional __emitter)
   (if __emitter (setq _emitter __emitter)) _emitter)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; string _id
    4 (length _id)
    ;; string _emitter
    4 (length _emitter)
    ;; string _result
    4 (length _result)
    ;; string _error
    4 (length _error)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _emitter
       (write-long (length _emitter) s) (princ _emitter s)
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;; string _error
       (write-long (length _error) s) (princ _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _emitter
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _emitter (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _error
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get interaction_msgs::ExpressionStatus :md5sum-) "76f460b31d117741daf9ae0482e0da70")
(setf (get interaction_msgs::ExpressionStatus :datatype-) "interaction_msgs/ExpressionStatus")
(setf (get interaction_msgs::ExpressionStatus :definition-)
      "#use standard header
Header header

#name of the expression just ended
string name

#unique identifier for the expression
string id

string emitter

#expresion executed successfully?
string result

#description of the error in case of a non-successfully completed expression
string error

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

")



(provide :interaction_msgs/ExpressionStatus "76f460b31d117741daf9ae0482e0da70")


