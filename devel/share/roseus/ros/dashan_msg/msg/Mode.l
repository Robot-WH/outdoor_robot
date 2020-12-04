;; Auto-generated. Do not edit!


(when (boundp 'dashan_msg::Mode)
  (if (not (find-package "DASHAN_MSG"))
    (make-package "DASHAN_MSG"))
  (shadow 'Mode (find-package "DASHAN_MSG")))
(unless (find-package "DASHAN_MSG::MODE")
  (make-package "DASHAN_MSG::MODE"))

(in-package "ROS")
;;//! \htmlinclude Mode.msg.html


(defclass dashan_msg::Mode
  :super ros::object
  :slots (_mode ))

(defmethod dashan_msg::Mode
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int32 _mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mode
       (write-long _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dashan_msg::Mode :md5sum-) "ff63f6ea3c3e9b7504b2cb3ee0a09d92")
(setf (get dashan_msg::Mode :datatype-) "dashan_msg/Mode")
(setf (get dashan_msg::Mode :definition-)
      "int32 mode    #1:navigation mode 2:gmapping mode

")



(provide :dashan_msg/Mode "ff63f6ea3c3e9b7504b2cb3ee0a09d92")


