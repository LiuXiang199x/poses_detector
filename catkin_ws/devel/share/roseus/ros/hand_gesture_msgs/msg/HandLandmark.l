;; Auto-generated. Do not edit!


(when (boundp 'hand_gesture_msgs::HandLandmark)
  (if (not (find-package "HAND_GESTURE_MSGS"))
    (make-package "HAND_GESTURE_MSGS"))
  (shadow 'HandLandmark (find-package "HAND_GESTURE_MSGS")))
(unless (find-package "HAND_GESTURE_MSGS::HANDLANDMARK")
  (make-package "HAND_GESTURE_MSGS::HANDLANDMARK"))

(in-package "ROS")
;;//! \htmlinclude HandLandmark.msg.html


(defclass hand_gesture_msgs::HandLandmark
  :super ros::object
  :slots (_number _name _coordinates ))

(defmethod hand_gesture_msgs::HandLandmark
  (:init
   (&key
    ((:number __number) 0)
    ((:name __name) "")
    ((:coordinates __coordinates) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _number (round __number))
   (setq _name (string __name))
   (setq _coordinates __coordinates)
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:coordinates
   (&optional __coordinates)
   (if __coordinates (setq _coordinates __coordinates)) _coordinates)
  (:serialization-length
   ()
   (+
    ;; int32 _number
    4
    ;; string _name
    4 (length _name)
    ;; float32[] _coordinates
    (* 4    (length _coordinates)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _number
       (write-long _number s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32[] _coordinates
     (write-long (length _coordinates) s)
     (dotimes (i (length _coordinates))
       (sys::poke (elt _coordinates i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _number
     (setq _number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _coordinates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coordinates (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _coordinates i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get hand_gesture_msgs::HandLandmark :md5sum-) "af09f7d0e0a50b4df9d66c15e2f8a9e1")
(setf (get hand_gesture_msgs::HandLandmark :datatype-) "hand_gesture_msgs/HandLandmark")
(setf (get hand_gesture_msgs::HandLandmark :definition-)
      "# This message represents a single hand landmark

int32 number  # from 0 to 20
string name  # see README.md for more info
float32[] coordinates  # coordinates x and y
")



(provide :hand_gesture_msgs/HandLandmark "af09f7d0e0a50b4df9d66c15e2f8a9e1")


