;; Auto-generated. Do not edit!


(when (boundp 'hand_gesture_msgs::HandGesture)
  (if (not (find-package "HAND_GESTURE_MSGS"))
    (make-package "HAND_GESTURE_MSGS"))
  (shadow 'HandGesture (find-package "HAND_GESTURE_MSGS")))
(unless (find-package "HAND_GESTURE_MSGS::HANDGESTURE")
  (make-package "HAND_GESTURE_MSGS::HANDGESTURE"))

(in-package "ROS")
;;//! \htmlinclude HandGesture.msg.html


(defclass hand_gesture_msgs::HandGesture
  :super ros::object
  :slots (_num_fingers _gesture ))

(defmethod hand_gesture_msgs::HandGesture
  (:init
   (&key
    ((:num_fingers __num_fingers) 0)
    ((:gesture __gesture) "")
    )
   (send-super :init)
   (setq _num_fingers (round __num_fingers))
   (setq _gesture (string __gesture))
   self)
  (:num_fingers
   (&optional __num_fingers)
   (if __num_fingers (setq _num_fingers __num_fingers)) _num_fingers)
  (:gesture
   (&optional __gesture)
   (if __gesture (setq _gesture __gesture)) _gesture)
  (:serialization-length
   ()
   (+
    ;; int32 _num_fingers
    4
    ;; string _gesture
    4 (length _gesture)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num_fingers
       (write-long _num_fingers s)
     ;; string _gesture
       (write-long (length _gesture) s) (princ _gesture s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num_fingers
     (setq _num_fingers (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _gesture
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gesture (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get hand_gesture_msgs::HandGesture :md5sum-) "c6c2f03cb1294d5c9b939b4f26a1ddd5")
(setf (get hand_gesture_msgs::HandGesture :datatype-) "hand_gesture_msgs/HandGesture")
(setf (get hand_gesture_msgs::HandGesture :definition-)
      "# Message to publish a hand gesture

int32 num_fingers
string gesture
")



(provide :hand_gesture_msgs/HandGesture "c6c2f03cb1294d5c9b939b4f26a1ddd5")


