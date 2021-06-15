
(cl:in-package :asdf)

(defsystem "hand_gesture_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "HandGesture" :depends-on ("_package_HandGesture"))
    (:file "_package_HandGesture" :depends-on ("_package"))
    (:file "HandLandmark" :depends-on ("_package_HandLandmark"))
    (:file "_package_HandLandmark" :depends-on ("_package"))
    (:file "HandLandmarks" :depends-on ("_package_HandLandmarks"))
    (:file "_package_HandLandmarks" :depends-on ("_package"))
  ))