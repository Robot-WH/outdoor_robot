;; Auto-generated. Do not edit!


(when (boundp 'dashan_msg::diagnosis)
  (if (not (find-package "DASHAN_MSG"))
    (make-package "DASHAN_MSG"))
  (shadow 'diagnosis (find-package "DASHAN_MSG")))
(unless (find-package "DASHAN_MSG::DIAGNOSIS")
  (make-package "DASHAN_MSG::DIAGNOSIS"))

(in-package "ROS")
;;//! \htmlinclude diagnosis.msg.html


(defclass dashan_msg::diagnosis
  :super ros::object
  :slots (_initInfo _hardwareInfo _Node _State _Para ))

(defmethod dashan_msg::diagnosis
  (:init
   (&key
    ((:initInfo __initInfo) 0)
    ((:hardwareInfo __hardwareInfo) 0)
    ((:Node __Node) 0)
    ((:State __State) 0)
    ((:Para __Para) 0)
    )
   (send-super :init)
   (setq _initInfo (round __initInfo))
   (setq _hardwareInfo (round __hardwareInfo))
   (setq _Node (round __Node))
   (setq _State (round __State))
   (setq _Para (round __Para))
   self)
  (:initInfo
   (&optional __initInfo)
   (if __initInfo (setq _initInfo __initInfo)) _initInfo)
  (:hardwareInfo
   (&optional __hardwareInfo)
   (if __hardwareInfo (setq _hardwareInfo __hardwareInfo)) _hardwareInfo)
  (:Node
   (&optional __Node)
   (if __Node (setq _Node __Node)) _Node)
  (:State
   (&optional __State)
   (if __State (setq _State __State)) _State)
  (:Para
   (&optional __Para)
   (if __Para (setq _Para __Para)) _Para)
  (:serialization-length
   ()
   (+
    ;; uint8 _initInfo
    1
    ;; uint8 _hardwareInfo
    1
    ;; uint8 _Node
    1
    ;; uint8 _State
    1
    ;; uint8 _Para
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _initInfo
       (write-byte _initInfo s)
     ;; uint8 _hardwareInfo
       (write-byte _hardwareInfo s)
     ;; uint8 _Node
       (write-byte _Node s)
     ;; uint8 _State
       (write-byte _State s)
     ;; uint8 _Para
       (write-byte _Para s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _initInfo
     (setq _initInfo (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hardwareInfo
     (setq _hardwareInfo (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Node
     (setq _Node (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _State
     (setq _State (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Para
     (setq _Para (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dashan_msg::diagnosis :md5sum-) "e928f8638651cca003f8f90f1a284ea4")
(setf (get dashan_msg::diagnosis :datatype-) "dashan_msg/diagnosis")
(setf (get dashan_msg::diagnosis :definition-)
      "#initial infomation
uint8 initInfo
#0:ok 1:motor
uint8 hardwareInfo
#nodes state 0:ok 1:notok
uint8 Node
uint8 State
uint8 Para

#navNodeInfo=1
#odomNodeInfo=2
#modeNodeInfo=3
#coreNodeInfo=4
#bringupNodeInfo=5
#diagNodeInfo=6
#serialNodeInfo=7
#lidarNodeInfo=8
#rpcNodeInfo=9

")



(provide :dashan_msg/diagnosis "e928f8638651cca003f8f90f1a284ea4")


