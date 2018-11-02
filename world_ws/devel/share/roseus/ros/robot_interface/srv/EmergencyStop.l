;; Auto-generated. Do not edit!


(when (boundp 'robot_interface::EmergencyStop)
  (if (not (find-package "ROBOT_INTERFACE"))
    (make-package "ROBOT_INTERFACE"))
  (shadow 'EmergencyStop (find-package "ROBOT_INTERFACE")))
(unless (find-package "ROBOT_INTERFACE::EMERGENCYSTOP")
  (make-package "ROBOT_INTERFACE::EMERGENCYSTOP"))
(unless (find-package "ROBOT_INTERFACE::EMERGENCYSTOPREQUEST")
  (make-package "ROBOT_INTERFACE::EMERGENCYSTOPREQUEST"))
(unless (find-package "ROBOT_INTERFACE::EMERGENCYSTOPRESPONSE")
  (make-package "ROBOT_INTERFACE::EMERGENCYSTOPRESPONSE"))

(in-package "ROS")





(defclass robot_interface::EmergencyStopRequest
  :super ros::object
  :slots (_stop ))

(defmethod robot_interface::EmergencyStopRequest
  (:init
   (&key
    ((:stop __stop) nil)
    )
   (send-super :init)
   (setq _stop __stop)
   self)
  (:stop
   (&optional __stop)
   (if __stop (setq _stop __stop)) _stop)
  (:serialization-length
   ()
   (+
    ;; bool _stop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _stop
       (if _stop (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _stop
     (setq _stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_interface::EmergencyStopResponse
  :super ros::object
  :slots (_result ))

(defmethod robot_interface::EmergencyStopResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_interface::EmergencyStop
  :super ros::object
  :slots ())

(setf (get robot_interface::EmergencyStop :md5sum-) "4a6d1a2c36071773212f354473f5e208")
(setf (get robot_interface::EmergencyStop :datatype-) "robot_interface/EmergencyStop")
(setf (get robot_interface::EmergencyStop :request) robot_interface::EmergencyStopRequest)
(setf (get robot_interface::EmergencyStop :response) robot_interface::EmergencyStopResponse)

(defmethod robot_interface::EmergencyStopRequest
  (:response () (instance robot_interface::EmergencyStopResponse :init)))

(setf (get robot_interface::EmergencyStopRequest :md5sum-) "4a6d1a2c36071773212f354473f5e208")
(setf (get robot_interface::EmergencyStopRequest :datatype-) "robot_interface/EmergencyStopRequest")
(setf (get robot_interface::EmergencyStopRequest :definition-)
      "bool stop
---
bool result
")

(setf (get robot_interface::EmergencyStopResponse :md5sum-) "4a6d1a2c36071773212f354473f5e208")
(setf (get robot_interface::EmergencyStopResponse :datatype-) "robot_interface/EmergencyStopResponse")
(setf (get robot_interface::EmergencyStopResponse :definition-)
      "bool stop
---
bool result
")



(provide :robot_interface/EmergencyStop "4a6d1a2c36071773212f354473f5e208")


