;; Auto-generated. Do not edit!


(when (boundp 'tarsbot_msgs::PIDStamped)
  (if (not (find-package "TARSBOT_MSGS"))
    (make-package "TARSBOT_MSGS"))
  (shadow 'PIDStamped (find-package "TARSBOT_MSGS")))
(unless (find-package "TARSBOT_MSGS::PIDSTAMPED")
  (make-package "TARSBOT_MSGS::PIDSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude PIDStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tarsbot_msgs::PIDStamped
  :super ros::object
  :slots (_header _pid ))

(defmethod tarsbot_msgs::PIDStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pid __pid) (instance tarsbot_msgs::PID :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pid __pid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pid
   (&rest __pid)
   (if (keywordp (car __pid))
       (send* _pid __pid)
     (progn
       (if __pid (setq _pid (car __pid)))
       _pid)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tarsbot_msgs/PID _pid
    (send _pid :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tarsbot_msgs/PID _pid
       (send _pid :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tarsbot_msgs/PID _pid
     (send _pid :deserialize buf ptr-) (incf ptr- (send _pid :serialization-length))
   ;;
   self)
  )

(setf (get tarsbot_msgs::PIDStamped :md5sum-) "76f54f0857a76c5e79d6f9203f257b96")
(setf (get tarsbot_msgs::PIDStamped :datatype-) "tarsbot_msgs/PIDStamped")
(setf (get tarsbot_msgs::PIDStamped :definition-)
      "# This is a message to hold the PID tuning values
Header header

# Required only for the low level rosserial base_controller
# because rosserial doesn't support dynamic reconfigure
PID pid
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: tarsbot_msgs/PID
# This is a message to hold the PID tuning values
# Required only for the low level rosserial base_controller
# because rosserial doesn't support dynamic reconfigure
float32 kp
float32 ki
float32 kd
")



(provide :tarsbot_msgs/PIDStamped "76f54f0857a76c5e79d6f9203f257b96")


