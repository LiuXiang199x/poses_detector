;; Auto-generated. Do not edit!


(when (boundp 'ros_openpose::Gesture)
  (if (not (find-package "ROS_OPENPOSE"))
    (make-package "ROS_OPENPOSE"))
  (shadow 'Gesture (find-package "ROS_OPENPOSE")))
(unless (find-package "ROS_OPENPOSE::GESTURE")
  (make-package "ROS_OPENPOSE::GESTURE"))

(in-package "ROS")
;;//! \htmlinclude Gesture.msg.html


(defclass ros_openpose::Gesture
  :super ros::object
  :slots (_lefthand _righthand _body ))

(defmethod ros_openpose::Gesture
  (:init
   (&key
    ((:lefthand __lefthand) "")
    ((:righthand __righthand) "")
    ((:body __body) "")
    )
   (send-super :init)
   (setq _lefthand (string __lefthand))
   (setq _righthand (string __righthand))
   (setq _body (string __body))
   self)
  (:lefthand
   (&optional __lefthand)
   (if __lefthand (setq _lefthand __lefthand)) _lefthand)
  (:righthand
   (&optional __righthand)
   (if __righthand (setq _righthand __righthand)) _righthand)
  (:body
   (&optional __body)
   (if __body (setq _body __body)) _body)
  (:serialization-length
   ()
   (+
    ;; string _lefthand
    4 (length _lefthand)
    ;; string _righthand
    4 (length _righthand)
    ;; string _body
    4 (length _body)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _lefthand
       (write-long (length _lefthand) s) (princ _lefthand s)
     ;; string _righthand
       (write-long (length _righthand) s) (princ _righthand s)
     ;; string _body
       (write-long (length _body) s) (princ _body s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _lefthand
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lefthand (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _righthand
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _righthand (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _body
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _body (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_openpose::Gesture :md5sum-) "bd533947e2ddb7675745edef8ae88c25")
(setf (get ros_openpose::Gesture :datatype-) "ros_openpose/Gesture")
(setf (get ros_openpose::Gesture :definition-)
      "string lefthand
string righthand
string body

")



(provide :ros_openpose/Gesture "bd533947e2ddb7675745edef8ae88c25")


