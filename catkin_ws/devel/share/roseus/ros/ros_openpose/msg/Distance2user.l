;; Auto-generated. Do not edit!


(when (boundp 'ros_openpose::Distance2user)
  (if (not (find-package "ROS_OPENPOSE"))
    (make-package "ROS_OPENPOSE"))
  (shadow 'Distance2user (find-package "ROS_OPENPOSE")))
(unless (find-package "ROS_OPENPOSE::DISTANCE2USER")
  (make-package "ROS_OPENPOSE::DISTANCE2USER"))

(in-package "ROS")
;;//! \htmlinclude Distance2user.msg.html


(defclass ros_openpose::Distance2user
  :super ros::object
  :slots (_distance ))

(defmethod ros_openpose::Distance2user
  (:init
   (&key
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _distance (float __distance))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_openpose::Distance2user :md5sum-) "6e77fb10f0c8b4833ec273aa9ac74459")
(setf (get ros_openpose::Distance2user :datatype-) "ros_openpose/Distance2user")
(setf (get ros_openpose::Distance2user :definition-)
      "float32 distance

")



(provide :ros_openpose/Distance2user "6e77fb10f0c8b4833ec273aa9ac74459")


