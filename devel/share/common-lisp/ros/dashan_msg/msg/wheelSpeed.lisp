; Auto-generated. Do not edit!


(cl:in-package dashan_msg-msg)


;//! \htmlinclude wheelSpeed.msg.html

(cl:defclass <wheelSpeed> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (leftwheel_speed
    :reader leftwheel_speed
    :initarg :leftwheel_speed
    :type cl:float
    :initform 0.0)
   (rightwheel_speed
    :reader rightwheel_speed
    :initarg :rightwheel_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass wheelSpeed (<wheelSpeed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wheelSpeed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wheelSpeed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dashan_msg-msg:<wheelSpeed> is deprecated: use dashan_msg-msg:wheelSpeed instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <wheelSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dashan_msg-msg:header-val is deprecated.  Use dashan_msg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'leftwheel_speed-val :lambda-list '(m))
(cl:defmethod leftwheel_speed-val ((m <wheelSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dashan_msg-msg:leftwheel_speed-val is deprecated.  Use dashan_msg-msg:leftwheel_speed instead.")
  (leftwheel_speed m))

(cl:ensure-generic-function 'rightwheel_speed-val :lambda-list '(m))
(cl:defmethod rightwheel_speed-val ((m <wheelSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dashan_msg-msg:rightwheel_speed-val is deprecated.  Use dashan_msg-msg:rightwheel_speed instead.")
  (rightwheel_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wheelSpeed>) ostream)
  "Serializes a message object of type '<wheelSpeed>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'leftwheel_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rightwheel_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wheelSpeed>) istream)
  "Deserializes a message object of type '<wheelSpeed>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftwheel_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightwheel_speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wheelSpeed>)))
  "Returns string type for a message object of type '<wheelSpeed>"
  "dashan_msg/wheelSpeed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wheelSpeed)))
  "Returns string type for a message object of type 'wheelSpeed"
  "dashan_msg/wheelSpeed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wheelSpeed>)))
  "Returns md5sum for a message object of type '<wheelSpeed>"
  "d9f5bb93b9ab85fa68f61bf838b71299")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wheelSpeed)))
  "Returns md5sum for a message object of type 'wheelSpeed"
  "d9f5bb93b9ab85fa68f61bf838b71299")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wheelSpeed>)))
  "Returns full string definition for message of type '<wheelSpeed>"
  (cl:format cl:nil "~%Header header ~%float32 leftwheel_speed~%float32 rightwheel_speed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wheelSpeed)))
  "Returns full string definition for message of type 'wheelSpeed"
  (cl:format cl:nil "~%Header header ~%float32 leftwheel_speed~%float32 rightwheel_speed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wheelSpeed>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wheelSpeed>))
  "Converts a ROS message object to a list"
  (cl:list 'wheelSpeed
    (cl:cons ':header (header msg))
    (cl:cons ':leftwheel_speed (leftwheel_speed msg))
    (cl:cons ':rightwheel_speed (rightwheel_speed msg))
))
