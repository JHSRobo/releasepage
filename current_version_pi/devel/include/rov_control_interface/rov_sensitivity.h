// Generated by gencpp from file rov_control_interface/rov_sensitivity.msg
// DO NOT EDIT!


#ifndef ROV_CONTROL_INTERFACE_MESSAGE_ROV_SENSITIVITY_H
#define ROV_CONTROL_INTERFACE_MESSAGE_ROV_SENSITIVITY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rov_control_interface
{
template <class ContainerAllocator>
struct rov_sensitivity_
{
  typedef rov_sensitivity_<ContainerAllocator> Type;

  rov_sensitivity_()
    : l_scale(0.0)
    , a_scale(0.0)
    , v_scale(0.0)  {
    }
  rov_sensitivity_(const ContainerAllocator& _alloc)
    : l_scale(0.0)
    , a_scale(0.0)
    , v_scale(0.0)  {
  (void)_alloc;
    }



   typedef double _l_scale_type;
  _l_scale_type l_scale;

   typedef double _a_scale_type;
  _a_scale_type a_scale;

   typedef double _v_scale_type;
  _v_scale_type v_scale;





  typedef boost::shared_ptr< ::rov_control_interface::rov_sensitivity_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rov_control_interface::rov_sensitivity_<ContainerAllocator> const> ConstPtr;

}; // struct rov_sensitivity_

typedef ::rov_control_interface::rov_sensitivity_<std::allocator<void> > rov_sensitivity;

typedef boost::shared_ptr< ::rov_control_interface::rov_sensitivity > rov_sensitivityPtr;
typedef boost::shared_ptr< ::rov_control_interface::rov_sensitivity const> rov_sensitivityConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rov_control_interface::rov_sensitivity_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rov_control_interface::rov_sensitivity_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rov_control_interface

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'rov_control_interface': ['/home/jhsrobo/Github/ROVMIND/ros_workspace/src/rov_control_interface/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rov_control_interface::rov_sensitivity_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rov_control_interface::rov_sensitivity_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rov_control_interface::rov_sensitivity_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rov_control_interface::rov_sensitivity_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rov_control_interface::rov_sensitivity_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rov_control_interface::rov_sensitivity_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rov_control_interface::rov_sensitivity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "00b658ca86463c93197e8e9aac68e5df";
  }

  static const char* value(const ::rov_control_interface::rov_sensitivity_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x00b658ca86463c93ULL;
  static const uint64_t static_value2 = 0x197e8e9aac68e5dfULL;
};

template<class ContainerAllocator>
struct DataType< ::rov_control_interface::rov_sensitivity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rov_control_interface/rov_sensitivity";
  }

  static const char* value(const ::rov_control_interface::rov_sensitivity_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rov_control_interface::rov_sensitivity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"\n"
"float64 l_scale\n"
"float64 a_scale\n"
"float64 v_scale\n"
;
  }

  static const char* value(const ::rov_control_interface::rov_sensitivity_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rov_control_interface::rov_sensitivity_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.l_scale);
      stream.next(m.a_scale);
      stream.next(m.v_scale);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct rov_sensitivity_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rov_control_interface::rov_sensitivity_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rov_control_interface::rov_sensitivity_<ContainerAllocator>& v)
  {
    s << indent << "l_scale: ";
    Printer<double>::stream(s, indent + "  ", v.l_scale);
    s << indent << "a_scale: ";
    Printer<double>::stream(s, indent + "  ", v.a_scale);
    s << indent << "v_scale: ";
    Printer<double>::stream(s, indent + "  ", v.v_scale);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROV_CONTROL_INTERFACE_MESSAGE_ROV_SENSITIVITY_H
