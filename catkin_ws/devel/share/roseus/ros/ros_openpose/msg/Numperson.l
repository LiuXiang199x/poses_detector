;; Auto-generated. Do not edit!


(when (boundp 'ros_openpose::Numperson)
  (if (not (find-package "ROS_OPENPOSE"))
    (make-package "ROS_OPENPOSE"))
  (shadow 'Numperson (find-package "ROS_OPENPOSE")))
(unless (find-package "ROS_OPENPOSE::NUMPERSON")
  (make-package "ROS_OPENPOSE::NUMPERSON"))

(in-package "ROS")
;;//! \htmlinclude Numperson.msg.html


(defclass ros_openpose::Numperson
  :super ros::object
  :slots (_data ))

(defmethod ros_openpose::Numperson
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_openpose::Numperson :md5sum-) "304a39449588c7f8ce2df6e8001c5fce")
(setf (get ros_openpose::Numperson :datatype-) "ros_openpose/Numperson")
(setf (get ros_openpose::Numperson :definition-)
      "uint32 data

")



(provide :ros_openpose/Numperson "304a39449588c7f8ce2df6e8001c5fce")


