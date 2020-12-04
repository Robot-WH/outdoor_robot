;; Auto-generated. Do not edit!


(when (boundp 'dashan_msg::zhishancmd)
  (if (not (find-package "DASHAN_MSG"))
    (make-package "DASHAN_MSG"))
  (shadow 'zhishancmd (find-package "DASHAN_MSG")))
(unless (find-package "DASHAN_MSG::ZHISHANCMD")
  (make-package "DASHAN_MSG::ZHISHANCMD"))

(in-package "ROS")
;;//! \htmlinclude zhishancmd.msg.html


(defclass dashan_msg::zhishancmd
  :super ros::object
  :slots (_zhishanCommand _autoCharge _rodControl _zhishanPara _zhishanVoice ))

(defmethod dashan_msg::zhishancmd
  (:init
   (&key
    ((:zhishanCommand __zhishanCommand) 0)
    ((:autoCharge __autoCharge) 0)
    ((:rodControl __rodControl) 0)
    ((:zhishanPara __zhishanPara) 0)
    ((:zhishanVoice __zhishanVoice) 0)
    )
   (send-super :init)
   (setq _zhishanCommand (round __zhishanCommand))
   (setq _autoCharge (round __autoCharge))
   (setq _rodControl (round __rodControl))
   (setq _zhishanPara (round __zhishanPara))
   (setq _zhishanVoice (round __zhishanVoice))
   self)
  (:zhishanCommand
   (&optional __zhishanCommand)
   (if __zhishanCommand (setq _zhishanCommand __zhishanCommand)) _zhishanCommand)
  (:autoCharge
   (&optional __autoCharge)
   (if __autoCharge (setq _autoCharge __autoCharge)) _autoCharge)
  (:rodControl
   (&optional __rodControl)
   (if __rodControl (setq _rodControl __rodControl)) _rodControl)
  (:zhishanPara
   (&optional __zhishanPara)
   (if __zhishanPara (setq _zhishanPara __zhishanPara)) _zhishanPara)
  (:zhishanVoice
   (&optional __zhishanVoice)
   (if __zhishanVoice (setq _zhishanVoice __zhishanVoice)) _zhishanVoice)
  (:serialization-length
   ()
   (+
    ;; uint8 _zhishanCommand
    1
    ;; uint8 _autoCharge
    1
    ;; uint8 _rodControl
    1
    ;; uint8 _zhishanPara
    1
    ;; uint8 _zhishanVoice
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _zhishanCommand
       (write-byte _zhishanCommand s)
     ;; uint8 _autoCharge
       (write-byte _autoCharge s)
     ;; uint8 _rodControl
       (write-byte _rodControl s)
     ;; uint8 _zhishanPara
       (write-byte _zhishanPara s)
     ;; uint8 _zhishanVoice
       (write-byte _zhishanVoice s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _zhishanCommand
     (setq _zhishanCommand (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _autoCharge
     (setq _autoCharge (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rodControl
     (setq _rodControl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _zhishanPara
     (setq _zhishanPara (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _zhishanVoice
     (setq _zhishanVoice (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dashan_msg::zhishancmd :md5sum-) "071fca3f528f7a18348853a91c078ea6")
(setf (get dashan_msg::zhishancmd :datatype-) "dashan_msg/zhishancmd")
(setf (get dashan_msg::zhishancmd :definition-)
      "#1:save init position 2:save goal position
#3:navigation goals 4:commision release
#5:save call position 6:one key call
#7：set init position 8：voice
#9：clear navigation goals in yaml
#10: turn voice 
#11:touch screen
#12:miaozhun
#13:shutdown
#14:reboot
#15:turn left
#16:start run after speaking finished,receive from other node,jixuqianjin
#17:start speak,send to other node
#18:patrol is finished
#19:yuan di deng dai
#20：dance
#21:turn right
#22：select one point and generate four directions points
uint8 zhishanCommand
#1:auto charge 2:charge finish 3:send command to serial to prepare charge
uint8 autoCharge
#1: rise 2:fall 3:head turn left 4:head turn right 5:arm up 6:arm down 7:dance 8：stop dance
uint8 rodControl
# reserve to use 
# voice8 1：interact 2：play mode 3:play voice 4：interupt 5:patrol and play
# 6:stop play image after voice is finished 7:patrol and speak
# turn voice 10: 1:up 2:down
# touch screen11：1:enable 2:disable
# turn15and21: the number of PI/4 
uint8 zhishanPara
# voice
# zhishanCommand 8：voice 5:patrol and play zhishanVoice = number
uint8 zhishanVoice
")



(provide :dashan_msg/zhishancmd "071fca3f528f7a18348853a91c078ea6")


