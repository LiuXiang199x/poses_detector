;; Auto-generated. Do not edit!


(when (boundp 'ros_openpose::ExerciseInfo)
  (if (not (find-package "ROS_OPENPOSE"))
    (make-package "ROS_OPENPOSE"))
  (shadow 'ExerciseInfo (find-package "ROS_OPENPOSE")))
(unless (find-package "ROS_OPENPOSE::EXERCISEINFO")
  (make-package "ROS_OPENPOSE::EXERCISEINFO"))
(unless (find-package "ROS_OPENPOSE::EXERCISEINFOREQUEST")
  (make-package "ROS_OPENPOSE::EXERCISEINFOREQUEST"))
(unless (find-package "ROS_OPENPOSE::EXERCISEINFORESPONSE")
  (make-package "ROS_OPENPOSE::EXERCISEINFORESPONSE"))

(in-package "ROS")





(defclass ros_openpose::ExerciseInfoRequest
  :super ros::object
  :slots (_name _data ))

(defmethod ros_openpose::ExerciseInfoRequest
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

(defclass ros_openpose::ExerciseInfoResponse
  :super ros::object
  :slots (_result ))

(defmethod ros_openpose::ExerciseInfoResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_openpose::ExerciseInfo
  :super ros::object
  :slots ())

(setf (get ros_openpose::ExerciseInfo :md5sum-) "7e305d1866417cb28d7a7f5697b48950")
(setf (get ros_openpose::ExerciseInfo :datatype-) "ros_openpose/ExerciseInfo")
(setf (get ros_openpose::ExerciseInfo :request) ros_openpose::ExerciseInfoRequest)
(setf (get ros_openpose::ExerciseInfo :response) ros_openpose::ExerciseInfoResponse)

(defmethod ros_openpose::ExerciseInfoRequest
  (:response () (instance ros_openpose::ExerciseInfoResponse :init)))

(setf (get ros_openpose::ExerciseInfoRequest :md5sum-) "7e305d1866417cb28d7a7f5697b48950")
(setf (get ros_openpose::ExerciseInfoRequest :datatype-) "ros_openpose/ExerciseInfoRequest")
(setf (get ros_openpose::ExerciseInfoRequest :definition-)
      "string name
float32[] data
---
string result

")

(setf (get ros_openpose::ExerciseInfoResponse :md5sum-) "7e305d1866417cb28d7a7f5697b48950")
(setf (get ros_openpose::ExerciseInfoResponse :datatype-) "ros_openpose/ExerciseInfoResponse")
(setf (get ros_openpose::ExerciseInfoResponse :definition-)
      "string name
float32[] data
---
string result

")



(provide :ros_openpose/ExerciseInfo "7e305d1866417cb28d7a7f5697b48950")


