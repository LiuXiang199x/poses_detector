
(cl:in-package :asdf)

(defsystem "tablet_data_connections-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PCTablet_Commands" :depends-on ("_package_PCTablet_Commands"))
    (:file "_package_PCTablet_Commands" :depends-on ("_package"))
  ))