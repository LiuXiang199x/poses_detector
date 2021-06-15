
(cl:in-package :asdf)

(defsystem "ros_openpose-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BodyPart" :depends-on ("_package_BodyPart"))
    (:file "_package_BodyPart" :depends-on ("_package"))
    (:file "CompThresh" :depends-on ("_package_CompThresh"))
    (:file "_package_CompThresh" :depends-on ("_package"))
    (:file "Distance2user" :depends-on ("_package_Distance2user"))
    (:file "_package_Distance2user" :depends-on ("_package"))
    (:file "ExerciseInfo" :depends-on ("_package_ExerciseInfo"))
    (:file "_package_ExerciseInfo" :depends-on ("_package"))
    (:file "Frame" :depends-on ("_package_Frame"))
    (:file "_package_Frame" :depends-on ("_package"))
    (:file "Gesture" :depends-on ("_package_Gesture"))
    (:file "_package_Gesture" :depends-on ("_package"))
    (:file "Numperson" :depends-on ("_package_Numperson"))
    (:file "_package_Numperson" :depends-on ("_package"))
    (:file "Person" :depends-on ("_package_Person"))
    (:file "_package_Person" :depends-on ("_package"))
    (:file "Pixel" :depends-on ("_package_Pixel"))
    (:file "_package_Pixel" :depends-on ("_package"))
  ))