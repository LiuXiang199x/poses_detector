;; Auto-generated. Do not edit!


(when (boundp 'ros_openpose::ExerciseInfo)
  (if (not (find-package "ROS_OPENPOSE"))
    (make-package "ROS_OPENPOSE"))
  (shadow 'ExerciseInfo (find-package "ROS_OPENPOSE")))
(unless (find-package "ROS_OPENPOSE::EXERCISEINFO")
  (make-package "ROS_OPENPOSE::EXERCISEINFO"))

(in-package "ROS")
;;//! \htmlinclude ExerciseInfo.msg.html


(defclass ros_openpose::ExerciseInfo
  :super ros::object
  :slots (_name _data ))

(defmethod ros_openpose::ExerciseInfo
  (:init
   (&key
    ((:name __name) "")
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _data __data)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get ros_openpose::ExerciseInfo :md5sum-) "33b68010f41f0b5e92d9f3d75c92f13f")
(setf (get ros_openpose::ExerciseInfo :datatype-) "ros_openpose/ExerciseInfo")
(setf (get ros_openpose::ExerciseInfo :definition-)
      "string name
float32[] data


")



(provide :ros_openpose/ExerciseInfo "33b68010f41f0b5e92d9f3d75c92f13f")


