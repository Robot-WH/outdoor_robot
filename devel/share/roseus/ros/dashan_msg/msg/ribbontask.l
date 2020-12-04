;; Auto-generated. Do not edit!


(when (boundp 'dashan_msg::ribbontask)
  (if (not (find-package "DASHAN_MSG"))
    (make-package "DASHAN_MSG"))
  (shadow 'ribbontask (find-package "DASHAN_MSG")))
(unless (find-package "DASHAN_MSG::RIBBONTASK")
  (make-package "DASHAN_MSG::RIBBONTASK"))

(in-package "ROS")
;;//! \htmlinclude ribbontask.msg.html


(defclass dashan_msg::ribbontask
  :super ros::object
  :slots (_cmd _senderip _from _taskid _routeid _pointid _size ))

(defmethod dashan_msg::ribbontask
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:senderip __senderip) "")
    ((:from __from) 0)
    ((:taskid __taskid) "")
    ((:routeid __routeid) 0)
    ((:pointid __pointid) (make-array 0 :initial-element 0 :element-type :integer))
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _senderip (string __senderip))
   (setq _from (round __from))
   (setq _taskid (string __taskid))
   (setq _routeid (round __routeid))
   (setq _pointid __pointid)
   (setq _size (round __size))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:senderip
   (&optional __senderip)
   (if __senderip (setq _senderip __senderip)) _senderip)
  (:from
   (&optional __from)
   (if __from (setq _from __from)) _from)
  (:taskid
   (&optional __taskid)
   (if __taskid (setq _taskid __taskid)) _taskid)
  (:routeid
   (&optional __routeid)
   (if __routeid (setq _routeid __routeid)) _routeid)
  (:pointid
   (&optional __pointid)
   (if __pointid (setq _pointid __pointid)) _pointid)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; uint8 _cmd
    1
    ;; string _senderip
    4 (length _senderip)
    ;; uint8 _from
    1
    ;; string _taskid
    4 (length _taskid)
    ;; int32 _routeid
    4
    ;; int32[] _pointid
    (* 4    (length _pointid)) 4
    ;; uint8 _size
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cmd
       (write-byte _cmd s)
     ;; string _senderip
       (write-long (length _senderip) s) (princ _senderip s)
     ;; uint8 _from
       (write-byte _from s)
     ;; string _taskid
       (write-long (length _taskid) s) (princ _taskid s)
     ;; int32 _routeid
       (write-long _routeid s)
     ;; int32[] _pointid
     (write-long (length _pointid) s)
     (dotimes (i (length _pointid))
       (write-long (elt _pointid i) s)
       )
     ;; uint8 _size
       (write-byte _size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmd
     (setq _cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _senderip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _senderip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _from
     (setq _from (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _taskid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _taskid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _routeid
     (setq _routeid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _pointid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pointid (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pointid i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint8 _size
     (setq _size (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dashan_msg::ribbontask :md5sum-) "5baa3f4faea623af8de2b30e03625db3")
(setf (get dashan_msg::ribbontask :datatype-) "dashan_msg/ribbontask")
(setf (get dashan_msg::ribbontask :definition-)
      "#req task 1; release task 2
uint8 cmd
#senderip
string senderip
#from dc or pda
uint8 from
#task uuid
string taskid
#route id
int32 routeid
#pointid of task 
int32[] pointid
uint8 size

")



(provide :dashan_msg/ribbontask "5baa3f4faea623af8de2b30e03625db3")


