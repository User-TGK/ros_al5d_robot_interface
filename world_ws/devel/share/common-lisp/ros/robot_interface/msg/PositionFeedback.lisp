; Auto-generated. Do not edit!


(cl:in-package robot_interface-msg)


;//! \htmlinclude PositionFeedback.msg.html

(cl:defclass <PositionFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PositionFeedback (<PositionFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_interface-msg:<PositionFeedback> is deprecated: use robot_interface-msg:PositionFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionFeedback>) ostream)
  "Serializes a message object of type '<PositionFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionFeedback>) istream)
  "Deserializes a message object of type '<PositionFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionFeedback>)))
  "Returns string type for a message object of type '<PositionFeedback>"
  "robot_interface/PositionFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionFeedback)))
  "Returns string type for a message object of type 'PositionFeedback"
  "robot_interface/PositionFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionFeedback>)))
  "Returns md5sum for a message object of type '<PositionFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionFeedback)))
  "Returns md5sum for a message object of type 'PositionFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionFeedback>)))
  "Returns full string definition for message of type '<PositionFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionFeedback)))
  "Returns full string definition for message of type 'PositionFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionFeedback
))
