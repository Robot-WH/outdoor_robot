;; Auto-generated. Do not edit!


(when (boundp 'dashan_msg::imudata)
  (if (not (find-package "DASHAN_MSG"))
    (make-package "DASHAN_MSG"))
  (shadow 'imudata (find-package "DASHAN_MSG")))
(unless (find-package "DASHAN_MSG::IMUDATA")
  (make-package "DASHAN_MSG::IMUDATA"))

(in-package "ROS")
;;//! \htmlinclude imudata.msg.html


(defclass dashan_msg::imudata
  :super ros::object
  :slots (_Temp _Ax _Ay _Az _Gx _Gy _Gz _Yaw ))

(defmethod dashan_msg::imudata
  (:init
   (&key
    ((:Temp __Temp) 0.0)
    ((:Ax __Ax) 0.0)
    ((:Ay __Ay) 0.0)
    ((:Az __Az) 0.0)
    ((:Gx __Gx) 0.0)
    ((:Gy __Gy) 0.0)
    ((:Gz __Gz) 0.0)
    ((:Yaw __Yaw) 0.0)
    )
   (send-super :init)
   (setq _Temp (float __Temp))
   (setq _Ax (float __Ax))
   (setq _Ay (float __Ay))
   (setq _Az (float __Az))
   (setq _Gx (float __Gx))
   (setq _Gy (float __Gy))
   (setq _Gz (float __Gz))
   (setq _Yaw (float __Yaw))
   self)
  (:Temp
   (&optional __Temp)
   (if __Temp (setq _Temp __Temp)) _Temp)
  (:Ax
   (&optional __Ax)
   (if __Ax (setq _Ax __Ax)) _Ax)
  (:Ay
   (&optional __Ay)
   (if __Ay (setq _Ay __Ay)) _Ay)
  (:Az
   (&optional __Az)
   (if __Az (setq _Az __Az)) _Az)
  (:Gx
   (&optional __Gx)
   (if __Gx (setq _Gx __Gx)) _Gx)
  (:Gy
   (&optional __Gy)
   (if __Gy (setq _Gy __Gy)) _Gy)
  (:Gz
   (&optional __Gz)
   (if __Gz (setq _Gz __Gz)) _Gz)
  (:Yaw
   (&optional __Yaw)
   (if __Yaw (setq _Yaw __Yaw)) _Yaw)
  (:serialization-length
   ()
   (+
    ;; float32 _Temp
    4
    ;; float32 _Ax
    4
    ;; float32 _Ay
    4
    ;; float32 _Az
    4
    ;; float32 _Gx
    4
    ;; float32 _Gy
    4
    ;; float32 _Gz
    4
    ;; float32 _Yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Temp
       (sys::poke _Temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Ax
       (sys::poke _Ax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Ay
       (sys::poke _Ay (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Az
       (sys::poke _Az (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Gx
       (sys::poke _Gx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Gy
       (sys::poke _Gy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Gz
       (sys::poke _Gz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Yaw
       (sys::poke _Yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Temp
     (setq _Temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Ax
     (setq _Ax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Ay
     (setq _Ay (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Az
     (setq _Az (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Gx
     (setq _Gx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Gy
     (setq _Gy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Gz
     (setq _Gz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Yaw
     (setq _Yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dashan_msg::imudata :md5sum-) "80dfed3c14e2a11e7333746f7785dbcc")
(setf (get dashan_msg::imudata :datatype-) "dashan_msg/imudata")
(setf (get dashan_msg::imudata :definition-)
      "float32 Temp

float32 Ax
float32 Ay
float32 Az

float32 Gx
float32 Gy
float32 Gz
float32 Yaw


")



(provide :dashan_msg/imudata "80dfed3c14e2a11e7333746f7785dbcc")


