
(cl:in-package :asdf)

(defsystem "ros_openpose-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ExerciseInfo" :depends-on ("_package_ExerciseInfo"))
    (:file "_package_ExerciseInfo" :depends-on ("_package"))
  ))