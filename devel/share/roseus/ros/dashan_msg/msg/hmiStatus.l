;; Auto-generated. Do not edit!


(when (boundp 'dashan_msg::hmiStatus)
  (if (not (find-package "DASHAN_MSG"))
    (make-package "DASHAN_MSG"))
  (shadow 'hmiStatus (find-package "DASHAN_MSG")))
(unless (find-package "DASHAN_MSG::HMISTATUS")
  (make-package "DASHAN_MSG::HMISTATUS"))

(in-package "ROS")
;;//! \htmlinclude hmiStatus.msg.html


(defclass dashan_msg::hmiStatus
  :super ros::object
  :slots (_commLinkState _buttonState _batteryState _batteryPercent _temperature _humidity _smogAlert _pushRodPos _emergentState _zhishancmdshow _pos_x _pos_y ))

(defmethod dashan_msg::hmiStatus
  (:init
   (&key
    ((:commLinkState __commLinkState) 0)
    ((:buttonState __buttonState) 0)
    ((:batteryState __batteryState) 0)
    ((:batteryPercent __batteryPercent) 0)
    ((:temperature __temperature) 0)
    ((:humidity __humidity) 0)
    ((:smogAlert __smogAlert) 0)
    ((:pushRodPos __pushRodPos) 0)
    ((:emergentState __emergentState) 0)
    ((:zhishancmdshow __zhishancmdshow) 0)
    ((:pos_x __pos_x) 0.0)
    ((:pos_y __pos_y) 0.0)
    )
   (send-super :init)
   (setq _commLinkState (round __commLinkState))
   (setq _buttonState (round __buttonState))
   (setq _batteryState (round __batteryState))
   (setq _batteryPercent (round __batteryPercent))
   (setq _temperature (round __temperature))
   (setq _humidity (round __humidity))
   (setq _smogAlert (round __smogAlert))
   (setq _pushRodPos (round __pushRodPos))
   (setq _emergentState (round __emergentState))
   (setq _zhishancmdshow (round __zhishancmdshow))
   (setq _pos_x (float __pos_x))
   (setq _pos_y (float __pos_y))
   self)
  (:commLinkState
   (&optional __commLinkState)
   (if __commLinkState (setq _commLinkState __commLinkState)) _commLinkState)
  (:buttonState
   (&optional __buttonState)
   (if __buttonState (setq _buttonState __buttonState)) _buttonState)
  (:batteryState
   (&optional __batteryState)
   (if __batteryState (setq _batteryState __batteryState)) _batteryState)
  (:batteryPercent
   (&optional __batteryPercent)
   (if __batteryPercent (setq _batteryPercent __batteryPercent)) _batteryPercent)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:humidity
   (&optional __humidity)
   (if __humidity (setq _humidity __humidity)) _humidity)
  (:smogAlert
   (&optional __smogAlert)
   (if __smogAlert (setq _smogAlert __smogAlert)) _smogAlert)
  (:pushRodPos
   (&optional __pushRodPos)
   (if __pushRodPos (setq _pushRodPos __pushRodPos)) _pushRodPos)
  (:emergentState
   (&optional __emergentState)
   (if __emergentState (setq _emergentState __emergentState)) _emergentState)
  (:zhishancmdshow
   (&optional __zhishancmdshow)
   (if __zhishancmdshow (setq _zhishancmdshow __zhishancmdshow)) _zhishancmdshow)
  (:pos_x
   (&optional __pos_x)
   (if __pos_x (setq _pos_x __pos_x)) _pos_x)
  (:pos_y
   (&optional __pos_y)
   (if __pos_y (setq _pos_y __pos_y)) _pos_y)
  (:serialization-length
   ()
   (+
    ;; uint8 _commLinkState
    1
    ;; uint8 _buttonState
    1
    ;; uint8 _batteryState
    1
    ;; uint8 _batteryPercent
    1
    ;; uint8 _temperature
    1
    ;; uint8 _humidity
    1
    ;; uint8 _smogAlert
    1
    ;; uint8 _pushRodPos
    1
    ;; uint8 _emergentState
    1
    ;; uint8 _zhishancmdshow
    1
    ;; float32 _pos_x
    4
    ;; float32 _pos_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _commLinkState
       (write-byte _commLinkState s)
     ;; uint8 _buttonState
       (write-byte _buttonState s)
     ;; uint8 _batteryState
       (write-byte _batteryState s)
     ;; uint8 _batteryPercent
       (write-byte _batteryPercent s)
     ;; uint8 _temperature
       (write-byte _temperature s)
     ;; uint8 _humidity
       (write-byte _humidity s)
     ;; uint8 _smogAlert
       (write-byte _smogAlert s)
     ;; uint8 _pushRodPos
       (write-byte _pushRodPos s)
     ;; uint8 _emergentState
       (write-byte _emergentState s)
     ;; uint8 _zhishancmdshow
       (write-byte _zhishancmdshow s)
     ;; float32 _pos_x
       (sys::poke _pos_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pos_y
       (sys::poke _pos_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _commLinkState
     (setq _commLinkState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _buttonState
     (setq _buttonState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _batteryState
     (setq _batteryState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _batteryPercent
     (setq _batteryPercent (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _temperature
     (setq _temperature (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _humidity
     (setq _humidity (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _smogAlert
     (setq _smogAlert (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _pushRodPos
     (setq _pushRodPos (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _emergentState
     (setq _emergentState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _zhishancmdshow
     (setq _zhishancmdshow (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _pos_x
     (setq _pos_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pos_y
     (setq _pos_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dashan_msg::hmiStatus :md5sum-) "783462f146126d76e1d0b3fc51dd06bf")
(setf (get dashan_msg::hmiStatus :datatype-) "dashan_msg/hmiStatus")
(setf (get dashan_msg::hmiStatus :definition-)
      "#communication link state
uint8 commLinkState
#button state
uint8 buttonState
#battery info
uint8 batteryState  # 0:normal state; 1:charge state
uint8 batteryPercent  # left percent 5%-100%

#temperature
uint8 temperature
#humidity
uint8 humidity
#smog alert
uint8 smogAlert  #1:alert 	0:no smog
#push rod pos
uint8 pushRodPos
#emergent push button
uint8 emergentState
#define CMD_SAVE_INIT_PARA 1
#define CMD_SAVE_GOAL_PSTN 2 here send the pos_x pos_y
#define CMD_SEND_GOALS 3 
#define CMD_SEND_CURR_PSTN 4
#define CMD_SAVE_POS 5
#define CMD_SEND_POS 6
#define CMD_SET_INIT_POS 7
#define CMD_VOICE 8
#define CMD_CLEAR_NAVIGOALS 9
uint8 zhishancmdshow
#position show
float32 pos_x
float32 pos_y
")



(provide :dashan_msg/hmiStatus "783462f146126d76e1d0b3fc51dd06bf")


