// Generated by gencpp from file tarsbot_msgs/AngularVelocities.msg
// DO NOT EDIT!


#ifndef TARSBOT_MSGS_MESSAGE_ANGULARVELOCITIES_H
#define TARSBOT_MSGS_MESSAGE_ANGULARVELOCITIES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tarsbot_msgs
{
template <class ContainerAllocator>
struct AngularVelocities_
{
  typedef AngularVelocities_<ContainerAllocator> Type;

  AngularVelocities_()
    : joint()  {
    }
  AngularVelocities_(const ContainerAllocator& _alloc)
    : joint(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _joint_type;
  _joint_type joint;





  typedef boost::shared_ptr< ::tarsbot_msgs::AngularVelocities_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tarsbot_msgs::AngularVelocities_<ContainerAllocator> const> ConstPtr;

}; // struct AngularVelocities_

typedef ::tarsbot_msgs::AngularVelocities_<std::allocator<void> > AngularVelocities;

typedef boost::shared_ptr< ::tarsbot_msgs::AngularVelocities > AngularVelocitiesPtr;
typedef boost::shared_ptr< ::tarsbot_msgs::AngularVelocities const> AngularVelocitiesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tarsbot_msgs::AngularVelocities_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tarsbot_msgs::AngularVelocities_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tarsbot_msgs::AngularVelocities_<ContainerAllocator1> & lhs, const ::tarsbot_msgs::AngularVelocities_<ContainerAllocator2> & rhs)
{
  return lhs.joint == rhs.joint;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tarsbot_msgs::AngularVelocities_<ContainerAllocator1> & lhs, const ::tarsbot_msgs::AngularVelocities_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tarsbot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tarsbot_msgs::AngularVelocities_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tarsbot_msgs::AngularVelocities_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tarsbot_msgs::AngularVelocities_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tarsbot_msgs::AngularVelocities_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tarsbot_msgs::AngularVelocities_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tarsbot_msgs::AngularVelocities_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tarsbot_msgs::AngularVelocities_<ContainerAllocator> >
{
  static const char* value()
  {
    return "edecb4b6fff50f927a908742515e167a";
  }

  static const char* value(const ::tarsbot_msgs::AngularVelocities_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xedecb4b6fff50f92ULL;
  static const uint64_t static_value2 = 0x7a908742515e167aULL;
};

template<class ContainerAllocator>
struct DataType< ::tarsbot_msgs::AngularVelocities_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tarsbot_msgs/AngularVelocities";
  }

  static const char* value(const ::tarsbot_msgs::AngularVelocities_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tarsbot_msgs::AngularVelocities_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This is a message that holds commanded angular joint velocity\n"
"# Use an array of type float32 for the two wheel joint velocities.\n"
"# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.\n"
"float32[] joint\n"
;
  }

  static const char* value(const ::tarsbot_msgs::AngularVelocities_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tarsbot_msgs::AngularVelocities_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AngularVelocities_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tarsbot_msgs::AngularVelocities_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tarsbot_msgs::AngularVelocities_<ContainerAllocator>& v)
  {
    s << indent << "joint[]" << std::endl;
    for (size_t i = 0; i < v.joint.size(); ++i)
    {
      s << indent << "  joint[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.joint[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TARSBOT_MSGS_MESSAGE_ANGULARVELOCITIES_H