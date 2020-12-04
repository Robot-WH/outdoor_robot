;; Auto-generated. Do not edit!


(when (boundp 'dashan_msg::customRoute)
  (if (not (find-package "DASHAN_MSG"))
    (make-package "DASHAN_MSG"))
  (shadow 'customRoute (find-package "DASHAN_MSG")))
(unless (find-package "DASHAN_MSG::CUSTOMROUTE")
  (make-package "DASHAN_MSG::CUSTOMROUTE"))

(in-package "ROS")
;;//! \htmlinclude customRoute.msg.html


(defclass dashan_msg::customRoute
  :super ros::object
  :slots (_pointIndexes _length ))

(defmethod dashan_msg::customRoute
  (:init
   (&key
    ((:pointIndexes __pointIndexes) (make-array 0 :initial-element 0 :element-type :integer))
    ((:length __length) 0)
    )
   (send-super :init)
   (setq _pointIndexes __pointIndexes)
   (setq _length (round __length))
   self)
  (:pointIndexes
   (&optional __pointIndexes)
   (if __pointIndexes (setq _pointIndexes __pointIndexes)) _pointIndexes)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; uint32[] _pointIndexes
    (* 4    (length _pointIndexes)) 4
    ;; uint8 _length
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _pointIndexes
     (write-long (length _pointIndexes) s)
     (dotimes (i (length _pointIndexes))
       (write-long (elt _pointIndexes i) s)
       )
     ;; uint8 _length
       (write-byte _length s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _pointIndexes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pointIndexes (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pointIndexes i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint8 _length
     (setq _length (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dashan_msg::customRoute :md5sum-) "d188738b8b3c860e29d2f4955ba5b012")
(setf (get dashan_msg::customRoute :datatype-) "dashan_msg/customRoute")
(setf (get dashan_msg::customRoute :definition-)
      "#record robot new route that contains a sequence of points; the data is the index of point
uint32[] pointIndexes
uint8 length

")



(provide :dashan_msg/customRoute "d188738b8b3c860e29d2f4955ba5b012")


