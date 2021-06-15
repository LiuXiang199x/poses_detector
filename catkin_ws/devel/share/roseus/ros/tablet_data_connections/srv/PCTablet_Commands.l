;; Auto-generated. Do not edit!


(when (boundp 'tablet_data_connections::PCTablet_Commands)
  (if (not (find-package "TABLET_DATA_CONNECTIONS"))
    (make-package "TABLET_DATA_CONNECTIONS"))
  (shadow 'PCTablet_Commands (find-package "TABLET_DATA_CONNECTIONS")))
(unless (find-package "TABLET_DATA_CONNECTIONS::PCTABLET_COMMANDS")
  (make-package "TABLET_DATA_CONNECTIONS::PCTABLET_COMMANDS"))
(unless (find-package "TABLET_DATA_CONNECTIONS::PCTABLET_COMMANDSREQUEST")
  (make-package "TABLET_DATA_CONNECTIONS::PCTABLET_COMMANDSREQUEST"))
(unless (find-package "TABLET_DATA_CONNECTIONS::PCTABLET_COMMANDSRESPONSE")
  (make-package "TABLET_DATA_CONNECTIONS::PCTABLET_COMMANDSRESPONSE"))

(in-package "ROS")





(defclass tablet_data_connections::PCTablet_CommandsRequest
  :super ros::object
  :slots (_command ))

(defmethod tablet_data_connections::PCTablet_CommandsRequest
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tablet_data_connections::PCTablet_CommandsResponse
  :super ros::object
  :slots (_result _info ))

(defmethod tablet_data_connections::PCTablet_CommandsResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:info __info) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _info (string __info))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; int8 _result
    1
    ;; string _info
    4 (length _info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _result
       (write-byte _result s)
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _result 127) (setq _result (- _result 256)))
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tablet_data_connections::PCTablet_Commands
  :super ros::object
  :slots ())

(setf (get tablet_data_connections::PCTablet_Commands :md5sum-) "9b3d578d85131ed0b96255aaed77a481")
(setf (get tablet_data_connections::PCTablet_Commands :datatype-) "tablet_data_connections/PCTablet_Commands")
(setf (get tablet_data_connections::PCTablet_Commands :request) tablet_data_connections::PCTablet_CommandsRequest)
(setf (get tablet_data_connections::PCTablet_Commands :response) tablet_data_connections::PCTablet_CommandsResponse)

(defmethod tablet_data_connections::PCTablet_CommandsRequest
  (:response () (instance tablet_data_connections::PCTablet_CommandsResponse :init)))

(setf (get tablet_data_connections::PCTablet_CommandsRequest :md5sum-) "9b3d578d85131ed0b96255aaed77a481")
(setf (get tablet_data_connections::PCTablet_CommandsRequest :datatype-) "tablet_data_connections/PCTablet_CommandsRequest")
(setf (get tablet_data_connections::PCTablet_CommandsRequest :definition-)
      "string command










---
int8 result
string info

")

(setf (get tablet_data_connections::PCTablet_CommandsResponse :md5sum-) "9b3d578d85131ed0b96255aaed77a481")
(setf (get tablet_data_connections::PCTablet_CommandsResponse :datatype-) "tablet_data_connections/PCTablet_CommandsResponse")
(setf (get tablet_data_connections::PCTablet_CommandsResponse :definition-)
      "string command










---
int8 result
string info

")



(provide :tablet_data_connections/PCTablet_Commands "9b3d578d85131ed0b96255aaed77a481")


