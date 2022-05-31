// Generated by gencpp from file tarsbot_msgs/WheelsCmd.msg
// DO NOT EDIT!


#ifndef TARSBOT_MSGS_MESSAGE_WHEELSCMD_H
#define TARSBOT_MSGS_MESSAGE_WHEELSCMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <tarsbot_msgs/AngularVelocities.h>

namespace tarsbot_msgs
{
template <class ContainerAllocator>
struct WheelsCmd_
{
  typedef WheelsCmd_<ContainerAllocator> Type;

  WheelsCmd_()
    : angular_velocities()  {
    }
  WheelsCmd_(const ContainerAllocator& _alloc)
    : angular_velocities(_alloc)  {
  (void)_alloc;
    }



   typedef  ::tarsbot_msgs::AngularVelocities_<ContainerAllocator>  _angular_velocities_type;
  _angular_velocities_type angular_velocities;





  typedef boost::shared_ptr< ::tarsbot_msgs::WheelsCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tarsbot_msgs::WheelsCmd_<ContainerAllocator> const> ConstPtr;

}; // struct WheelsCmd_

typedef ::tarsbot_msgs::WheelsCmd_<std::allocator<void> > WheelsCmd;

typedef boost::shared_ptr< ::tarsbot_msgs::WheelsCmd > WheelsCmdPtr;
typedef boost::shared_ptr< ::tarsbot_msgs::WheelsCmd const> WheelsCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tarsbot_msgs::WheelsCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tarsbot_msgs::WheelsCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tarsbot_msgs::WheelsCmd_<ContainerAllocator1> & lhs, const ::tarsbot_msgs::WheelsCmd_<ContainerAllocator2> & rhs)
{
  return lhs.angular_velocities == rhs.angular_velocities;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tarsbot_msgs::WheelsCmd_<ContainerAllocator1> & lhs, const ::tarsbot_msgs::WheelsCmd_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tarsbot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tarsbot_msgs::WheelsCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tarsbot_msgs::WheelsCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tarsbot_msgs::WheelsCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tarsbot_msgs::WheelsCmd_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tarsbot_msgs::WheelsCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tarsbot_msgs::WheelsCmd_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tarsbot_msgs::WheelsCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "85d3efcbf77039b4c3993e4dcc872362";
  }

  static const char* value(const ::tarsbot_msgs::WheelsCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x85d3efcbf77039b4ULL;
  static const uint64_t static_value2 = 0xc3993e4dcc872362ULL;
};

template<class ContainerAllocator>
struct DataType< ::tarsbot_msgs::WheelsCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tarsbot_msgs/WheelsCmd";
  }

  static const char* value(const ::tarsbot_msgs::WheelsCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tarsbot_msgs::WheelsCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This is a message that holds commanded angular joint velocity\n"
"# Use an array of type float32 for the two wheel joint velocities.\n"
"# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.\n"
"AngularVelocities angular_velocities\n"
"================================================================================\n"
"MSG: tarsbot_msgs/AngularVelocities\n"
"# This is a message that holds commanded angular joint velocity\n"
"# Use an array of type float32 for the two wheel joint velocities.\n"
"# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.\n"
"float32[] joint\n"
;
  }

  static const char* value(const ::tarsbot_msgs::WheelsCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tarsbot_msgs::WheelsCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.angular_velocities);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WheelsCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tarsbot_msgs::WheelsCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tarsbot_msgs::WheelsCmd_<ContainerAllocator>& v)
  {
    s << indent << "angular_velocities: ";
    s << std::endl;
    Printer< ::tarsbot_msgs::AngularVelocities_<ContainerAllocator> >::stream(s, indent + "  ", v.angular_velocities);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TARSBOT_MSGS_MESSAGE_WHEELSCMD_H
