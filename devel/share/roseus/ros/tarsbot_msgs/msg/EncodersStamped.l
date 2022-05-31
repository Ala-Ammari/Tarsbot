;; Auto-generated. Do not edit!


(when (boundp 'tarsbot_msgs::EncodersStamped)
  (if (not (find-package "TARSBOT_MSGS"))
    (make-package "TARSBOT_MSGS"))
  (shadow 'EncodersStamped (find-package "TARSBOT_MSGS")))
(unless (find-package "TARSBOT_MSGS::ENCODERSSTAMPED")
  (make-package "TARSBOT_MSGS::ENCODERSSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude EncodersStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tarsbot_msgs::EncodersStamped
  :super ros::object
  :slots (_header _encoders ))

(defmethod tarsbot_msgs::EncodersStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:encoders __encoders) (instance tarsbot_msgs::Encoders :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _encoders __encoders)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:encoders
   (&rest __encoders)
   (if (keywordp (car __encoders))
       (send* _encoders __encoders)
     (progn
       (if __encoders (setq _encoders (car __encoders)))
       _encoders)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tarsbot_msgs/Encoders _encoders
    (send _encoders :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tarsbot_msgs/Encoders _encoders
       (send _encoders :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tarsbot_msgs/Encoders _encoders
     (send _encoders :deserialize buf ptr-) (incf ptr- (send _encoders :serialization-length))
   ;;
   self)
  )

(setf (get tarsbot_msgs::EncodersStamped :md5sum-) "162975f999a4d19c3bdc0165594516da")
(setf (get tarsbot_msgs::EncodersStamped :datatype-) "tarsbot_msgs/EncodersStamped")
(setf (get tarsbot_msgs::EncodersStamped :definition-)
      "# This is a message to hold number of ticks from Encoders
Header header

# Use an array of size two of type int32 for the two encoders.
# int32 is used instead of int64 because it is not supporte by Arduino/Teensy.
# An overflow is also unlikely with the encoders of the DG01D-E 
# motor with its encoder because of its low encoder resolution
Encoders encoders
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
MSG: tarsbot_msgs/Encoders
# This is a message to hold number of ticks from Encoders
# Use an array of size two of type int32 for the two encoders.
# int32 is used instead of int64 because it is not supporte by Arduino/Teensy.
# An overflow is also unlikely with the encoders of the DG01D-E 
# motor with its encoder because of its low encoder resolution
int32[2] ticks
")



(provide :tarsbot_msgs/EncodersStamped "162975f999a4d19c3bdc0165594516da")


