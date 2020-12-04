;; Auto-generated. Do not edit!


(when (boundp 'dashan_msg::xyyawdata)
  (if (not (find-package "DASHAN_MSG"))
    (make-package "DASHAN_MSG"))
  (shadow 'xyyawdata (find-package "DASHAN_MSG")))
(unless (find-package "DASHAN_MSG::XYYAWDATA")
  (make-package "DASHAN_MSG::XYYAWDATA"))

(in-package "ROS")
;;//! \htmlinclude xyyawdata.msg.html


(defclass dashan_msg::xyyawdata
  :super ros::object
  :slots (_flag _XValue _YValue _YAWValue ))

(defmethod dashan_msg::xyyawdata
  (:init
   (&key
    ((:flag __flag) 0)
    ((:XValue __XValue) 0)
    ((:YValue __YValue) 0)
    ((:YAWValue __YAWValue) 0)
    )
   (send-super :init)
   (setq _flag (round __flag))
   (setq _XValue (round __XValue))
   (setq _YValue (round __YValue))
   (setq _YAWValue (round __YAWValue))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:XValue
   (&optional __XValue)
   (if __XValue (setq _XValue __XValue)) _XValue)
  (:YValue
   (&optional __YValue)
   (if __YValue (setq _YValue __YValue)) _YValue)
  (:YAWValue
   (&optional __YAWValue)
   (if __YAWValue (setq _YAWValue __YAWValue)) _YAWValue)
  (:serialization-length
   ()
   (+
    ;; uint8 _flag
    1
    ;; int32 _XValue
    4
    ;; int32 _YValue
    4
    ;; int32 _YAWValue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _flag
       (write-byte _flag s)
     ;; int32 _XValue
       (write-long _XValue s)
     ;; int32 _YValue
       (write-long _YValue s)
     ;; int32 _YAWValue
       (write-long _YAWValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _XValue
     (setq _XValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _YValue
     (setq _YValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _YAWValue
     (setq _YAWValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dashan_msg::xyyawdata :md5sum-) "f741085a90ad3eabdab8909f70ea8a0d")
(setf (get dashan_msg::xyyawdata :datatype-) "dashan_msg/xyyawdata")
(setf (get dashan_msg::xyyawdata :definition-)
      "uint8 flag
int32 XValue
int32 YValue
int32 YAWValue



")



(provide :dashan_msg/xyyawdata "f741085a90ad3eabdab8909f70ea8a0d")


