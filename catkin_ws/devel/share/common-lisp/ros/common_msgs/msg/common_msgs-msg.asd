
(cl:in-package :asdf)

(defsystem "common_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "KeyBoolPair" :depends-on ("_package_KeyBoolPair"))
    (:file "_package_KeyBoolPair" :depends-on ("_package"))
    (:file "KeyValuePair" :depends-on ("_package_KeyValuePair"))
    (:file "_package_KeyValuePair" :depends-on ("_package"))
    (:file "KeyValuePairArray" :depends-on ("_package_KeyValuePairArray"))
    (:file "_package_KeyValuePairArray" :depends-on ("_package"))
  ))