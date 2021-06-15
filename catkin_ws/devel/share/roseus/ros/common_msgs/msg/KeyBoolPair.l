;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::KeyBoolPair)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'KeyBoolPair (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::KEYBOOLPAIR")
  (make-package "COMMON_MSGS::KEYBOOLPAIR"))

(in-package "ROS")
;;//! \htmlinclude KeyBoolPair.msg.html


(defclass common_msgs::KeyBoolPair
  :super ros::object
  :slots (_key _value ))

(defmethod common_msgs::KeyBoolPair
  (:init
   (&key
    ((:key __key) "")
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _key (string __key))
   (setq _value __value)
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _key
    4 (length _key)
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get common_msgs::KeyBoolPair :md5sum-) "4687d6999a553be692d35fbb1253c5d8")
(setf (get common_msgs::KeyBoolPair :datatype-) "common_msgs/KeyBoolPair")
(setf (get common_msgs::KeyBoolPair :definition-)
      "#use standard header
#Header header

#string values for key and its value (bool)
string key
bool value

")



(provide :common_msgs/KeyBoolPair "4687d6999a553be692d35fbb1253c5d8")


