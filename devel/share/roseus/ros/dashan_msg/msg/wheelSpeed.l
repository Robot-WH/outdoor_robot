;; Auto-generated. Do not edit!


(when (boundp 'dashan_msg::wheelSpeed)
  (if (not (find-package "DASHAN_MSG"))
    (make-package "DASHAN_MSG"))
  (shadow 'wheelSpeed (find-package "DASHAN_MSG")))
(unless (find-package "DASHAN_MSG::WHEELSPEED")
  (make-package "DASHAN_MSG::WHEELSPEED"))

(in-package "ROS")
;;//! \htmlinclude wheelSpeed.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dashan_msg::wheelSpeed
  :super ros::object
  :slots (_header _leftwheel_speed _rightwheel_speed ))

(defmethod dashan_msg::wheelSpeed
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:leftwheel_speed __leftwheel_speed) 0.0)
    ((:rightwheel_speed __rightwheel_speed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _leftwheel_speed (float __leftwheel_speed))
   (setq _rightwheel_speed (float __rightwheel_speed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:leftwheel_speed
   (&optional __leftwheel_speed)
   (if __leftwheel_speed (setq _leftwheel_speed __leftwheel_speed)) _leftwheel_speed)
  (:rightwheel_speed
   (&optional __rightwheel_speed)
   (if __rightwheel_speed (setq _rightwheel_speed __rightwheel_speed)) _rightwheel_speed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _leftwheel_speed
    4
    ;; float32 _rightwheel_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _leftwheel_speed
       (sys::poke _leftwheel_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rightwheel_speed
       (sys::poke _rightwheel_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _leftwheel_speed
     (setq _leftwheel_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rightwheel_speed
     (setq _rightwheel_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dashan_msg::wheelSpeed :md5sum-) "d9f5bb93b9ab85fa68f61bf838b71299")
(setf (get dashan_msg::wheelSpeed :datatype-) "dashan_msg/wheelSpeed")
(setf (get dashan_msg::wheelSpeed :definition-)
      "
Header header 
float32 leftwheel_speed
float32 rightwheel_speed

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :dashan_msg/wheelSpeed "d9f5bb93b9ab85fa68f61bf838b71299")


