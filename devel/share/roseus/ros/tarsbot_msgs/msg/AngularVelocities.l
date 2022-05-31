;; Auto-generated. Do not edit!


(when (boundp 'tarsbot_msgs::AngularVelocities)
  (if (not (find-package "TARSBOT_MSGS"))
    (make-package "TARSBOT_MSGS"))
  (shadow 'AngularVelocities (find-package "TARSBOT_MSGS")))
(unless (find-package "TARSBOT_MSGS::ANGULARVELOCITIES")
  (make-package "TARSBOT_MSGS::ANGULARVELOCITIES"))

(in-package "ROS")
;;//! \htmlinclude AngularVelocities.msg.html


(defclass tarsbot_msgs::AngularVelocities
  :super ros::object
  :slots (_joint ))

(defmethod tarsbot_msgs::AngularVelocities
  (:init
   (&key
    ((:joint __joint) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint __joint)
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:serialization-length
   ()
   (+
    ;; float32[] _joint
    (* 4    (length _joint)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joint
     (write-long (length _joint) s)
     (dotimes (i (length _joint))
       (sys::poke (elt _joint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get tarsbot_msgs::AngularVelocities :md5sum-) "edecb4b6fff50f927a908742515e167a")
(setf (get tarsbot_msgs::AngularVelocities :datatype-) "tarsbot_msgs/AngularVelocities")
(setf (get tarsbot_msgs::AngularVelocities :definition-)
      "# This is a message that holds commanded angular joint velocity
# Use an array of type float32 for the two wheel joint velocities.
# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.
float32[] joint
")



(provide :tarsbot_msgs/AngularVelocities "edecb4b6fff50f927a908742515e167a")


