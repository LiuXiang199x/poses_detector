
(cl:in-package :asdf)

(defsystem "hand_gesture_skill-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "HandGestureAction" :depends-on ("_package_HandGestureAction"))
    (:file "_package_HandGestureAction" :depends-on ("_package"))
    (:file "HandGestureActionFeedback" :depends-on ("_package_HandGestureActionFeedback"))
    (:file "_package_HandGestureActionFeedback" :depends-on ("_package"))
    (:file "HandGestureActionGoal" :depends-on ("_package_HandGestureActionGoal"))
    (:file "_package_HandGestureActionGoal" :depends-on ("_package"))
    (:file "HandGestureActionResult" :depends-on ("_package_HandGestureActionResult"))
    (:file "_package_HandGestureActionResult" :depends-on ("_package"))
    (:file "HandGestureFeedback" :depends-on ("_package_HandGestureFeedback"))
    (:file "_package_HandGestureFeedback" :depends-on ("_package"))
    (:file "HandGestureGoal" :depends-on ("_package_HandGestureGoal"))
    (:file "_package_HandGestureGoal" :depends-on ("_package"))
    (:file "HandGestureResult" :depends-on ("_package_HandGestureResult"))
    (:file "_package_HandGestureResult" :depends-on ("_package"))
  ))