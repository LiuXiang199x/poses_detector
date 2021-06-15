
(cl:in-package :asdf)

(defsystem "exercise_skill-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :common_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ExerciseAction" :depends-on ("_package_ExerciseAction"))
    (:file "_package_ExerciseAction" :depends-on ("_package"))
    (:file "ExerciseActionFeedback" :depends-on ("_package_ExerciseActionFeedback"))
    (:file "_package_ExerciseActionFeedback" :depends-on ("_package"))
    (:file "ExerciseActionGoal" :depends-on ("_package_ExerciseActionGoal"))
    (:file "_package_ExerciseActionGoal" :depends-on ("_package"))
    (:file "ExerciseActionResult" :depends-on ("_package_ExerciseActionResult"))
    (:file "_package_ExerciseActionResult" :depends-on ("_package"))
    (:file "ExerciseFeedback" :depends-on ("_package_ExerciseFeedback"))
    (:file "_package_ExerciseFeedback" :depends-on ("_package"))
    (:file "ExerciseGoal" :depends-on ("_package_ExerciseGoal"))
    (:file "_package_ExerciseGoal" :depends-on ("_package"))
    (:file "ExerciseResult" :depends-on ("_package_ExerciseResult"))
    (:file "_package_ExerciseResult" :depends-on ("_package"))
  ))