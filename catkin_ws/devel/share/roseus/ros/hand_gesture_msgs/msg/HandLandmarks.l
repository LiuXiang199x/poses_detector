;; Auto-generated. Do not edit!


(when (boundp 'hand_gesture_msgs::HandLandmarks)
  (if (not (find-package "HAND_GESTURE_MSGS"))
    (make-package "HAND_GESTURE_MSGS"))
  (shadow 'HandLandmarks (find-package "HAND_GESTURE_MSGS")))
(unless (find-package "HAND_GESTURE_MSGS::HANDLANDMARKS")
  (make-package "HAND_GESTURE_MSGS::HANDLANDMARKS"))

(in-package "ROS")
;;//! \htmlinclude HandLandmarks.msg.html


(defclass hand_gesture_msgs::HandLandmarks
  :super ros::object
  :slots (_landmarks ))

(defmethod hand_gesture_msgs::HandLandmarks
  (:init
   (&key
    ((:landmarks __landmarks) (let (r) (dotimes (i 0) (push (instance hand_gesture_msgs::HandLandmark :init) r)) r))
    )
   (send-super :init)
   (setq _landmarks __landmarks)
   self)
  (:landmarks
   (&rest __landmarks)
   (if (keywordp (car __landmarks))
       (send* _landmarks __landmarks)
     (progn
       (if __landmarks (setq _landmarks (car __landmarks)))
       _landmarks)))
  (:serialization-length
   ()
   (+
    ;; hand_gesture_msgs/HandLandmark[] _landmarks
    (apply #'+ (send-all _landmarks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hand_gesture_msgs/HandLandmark[] _landmarks
     (write-long (length _landmarks) s)
     (dolist (elem _landmarks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hand_gesture_msgs/HandLandmark[] _landmarks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmarks (let (r) (dotimes (i n) (push (instance hand_gesture_msgs::HandLandmark :init) r)) r))
     (dolist (elem- _landmarks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hand_gesture_msgs::HandLandmarks :md5sum-) "2f0322f1ef8324746d3ce6a203bcab22")
(setf (get hand_gesture_msgs::HandLandmarks :datatype-) "hand_gesture_msgs/HandLandmarks")
(setf (get hand_gesture_msgs::HandLandmarks :definition-)
      "# This message represents a set of hand landmarks, each having two coordinates, a number and a name assigned to it (see README.md for more info)

HandLandmark[] landmarks
================================================================================
MSG: hand_gesture_msgs/HandLandmark
# This message represents a single hand landmark

int32 number  # from 0 to 20
string name  # see README.md for more info
float32[] coordinates  # coordinates x and y
")



(provide :hand_gesture_msgs/HandLandmarks "2f0322f1ef8324746d3ce6a203bcab22")


