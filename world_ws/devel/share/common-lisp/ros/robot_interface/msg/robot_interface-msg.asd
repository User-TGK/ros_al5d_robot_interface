
(cl:in-package :asdf)

(defsystem "robot_interface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Angle" :depends-on ("_package_Angle"))
    (:file "_package_Angle" :depends-on ("_package"))
    (:file "Configuration" :depends-on ("_package_Configuration"))
    (:file "_package_Configuration" :depends-on ("_package"))
    (:file "PositionAction" :depends-on ("_package_PositionAction"))
    (:file "_package_PositionAction" :depends-on ("_package"))
    (:file "PositionActionFeedback" :depends-on ("_package_PositionActionFeedback"))
    (:file "_package_PositionActionFeedback" :depends-on ("_package"))
    (:file "PositionActionGoal" :depends-on ("_package_PositionActionGoal"))
    (:file "_package_PositionActionGoal" :depends-on ("_package"))
    (:file "PositionActionResult" :depends-on ("_package_PositionActionResult"))
    (:file "_package_PositionActionResult" :depends-on ("_package"))
    (:file "PositionFeedback" :depends-on ("_package_PositionFeedback"))
    (:file "_package_PositionFeedback" :depends-on ("_package"))
    (:file "PositionGoal" :depends-on ("_package_PositionGoal"))
    (:file "_package_PositionGoal" :depends-on ("_package"))
    (:file "PositionResult" :depends-on ("_package_PositionResult"))
    (:file "_package_PositionResult" :depends-on ("_package"))
  ))