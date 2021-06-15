;; Auto-generated. Do not edit!


(when (boundp 'ros_openpose::CompThresh)
  (if (not (find-package "ROS_OPENPOSE"))
    (make-package "ROS_OPENPOSE"))
  (shadow 'CompThresh (find-package "ROS_OPENPOSE")))
(unless (find-package "ROS_OPENPOSE::COMPTHRESH")
  (make-package "ROS_OPENPOSE::COMPTHRESH"))

(in-package "ROS")
;;//! \htmlinclude CompThresh.msg.html


(defclass ros_openpose::CompThresh
  :super ros::object
  :slots (_data ))

(defmethod ros_openpose::CompThresh
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (if (elt _data i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (make-list n))
     (dotimes (i n)
     (setf (elt _data i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get ros_openpose::CompThresh :md5sum-) "403a16d9294b908e45c67a6f3c3a5b27")
(setf (get ros_openpose::CompThresh :datatype-) "ros_openpose/CompThresh")
(setf (get ros_openpose::CompThresh :definition-)
      "bool[] data

")



(provide :ros_openpose/CompThresh "403a16d9294b908e45c67a6f3c3a5b27")


