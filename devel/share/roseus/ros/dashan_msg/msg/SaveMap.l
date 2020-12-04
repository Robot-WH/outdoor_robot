;; Auto-generated. Do not edit!


(when (boundp 'dashan_msg::SaveMap)
  (if (not (find-package "DASHAN_MSG"))
    (make-package "DASHAN_MSG"))
  (shadow 'SaveMap (find-package "DASHAN_MSG")))
(unless (find-package "DASHAN_MSG::SAVEMAP")
  (make-package "DASHAN_MSG::SAVEMAP"))

(in-package "ROS")
;;//! \htmlinclude SaveMap.msg.html


(defclass dashan_msg::SaveMap
  :super ros::object
  :slots (_flag ))

(defmethod dashan_msg::SaveMap
  (:init
   (&key
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _flag (round __flag))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; int32 _flag
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _flag
       (write-long _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _flag
     (setq _flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dashan_msg::SaveMap :md5sum-) "aa0dbc5596ec12974ea3a17a045b36e0")
(setf (get dashan_msg::SaveMap :datatype-) "dashan_msg/SaveMap")
(setf (get dashan_msg::SaveMap :definition-)
      "int32 flag    #1:save map command

")



(provide :dashan_msg/SaveMap "aa0dbc5596ec12974ea3a17a045b36e0")


