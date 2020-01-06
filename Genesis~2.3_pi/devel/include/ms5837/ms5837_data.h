// Generated by gencpp from file ms5837/ms5837_data.msg
// DO NOT EDIT!


#ifndef MS5837_MESSAGE_MS5837_DATA_H
#define MS5837_MESSAGE_MS5837_DATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace ms5837
{
template <class ContainerAllocator>
struct ms5837_data_
{
  typedef ms5837_data_<ContainerAllocator> Type;

  ms5837_data_()
    : header()
    , tempC(0.0)
    , tempF(0.0)
    , depth(0.0)
    , altitudeM(0.0)  {
    }
  ms5837_data_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , tempC(0.0)
    , tempF(0.0)
    , depth(0.0)
    , altitudeM(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _tempC_type;
  _tempC_type tempC;

   typedef double _tempF_type;
  _tempF_type tempF;

   typedef double _depth_type;
  _depth_type depth;

   typedef double _altitudeM_type;
  _altitudeM_type altitudeM;





  typedef boost::shared_ptr< ::ms5837::ms5837_data_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ms5837::ms5837_data_<ContainerAllocator> const> ConstPtr;

}; // struct ms5837_data_

typedef ::ms5837::ms5837_data_<std::allocator<void> > ms5837_data;

typedef boost::shared_ptr< ::ms5837::ms5837_data > ms5837_dataPtr;
typedef boost::shared_ptr< ::ms5837::ms5837_data const> ms5837_dataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ms5837::ms5837_data_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ms5837::ms5837_data_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ms5837

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'ms5837': ['/home/jhsrobo/Github/ROVMIND/ros_workspace/src/ms5837/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ms5837::ms5837_data_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ms5837::ms5837_data_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ms5837::ms5837_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ms5837::ms5837_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ms5837::ms5837_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ms5837::ms5837_data_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ms5837::ms5837_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eca2bdcabad4ac8096363838d8496716";
  }

  static const char* value(const ::ms5837::ms5837_data_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeca2bdcabad4ac80ULL;
  static const uint64_t static_value2 = 0x96363838d8496716ULL;
};

template<class ContainerAllocator>
struct DataType< ::ms5837::ms5837_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ms5837/ms5837_data";
  }

  static const char* value(const ::ms5837::ms5837_data_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ms5837::ms5837_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"float64 tempC\n"
"float64 tempF\n"
"float64 depth\n"
"float64 altitudeM\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::ms5837::ms5837_data_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ms5837::ms5837_data_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.tempC);
      stream.next(m.tempF);
      stream.next(m.depth);
      stream.next(m.altitudeM);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ms5837_data_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ms5837::ms5837_data_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ms5837::ms5837_data_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "tempC: ";
    Printer<double>::stream(s, indent + "  ", v.tempC);
    s << indent << "tempF: ";
    Printer<double>::stream(s, indent + "  ", v.tempF);
    s << indent << "depth: ";
    Printer<double>::stream(s, indent + "  ", v.depth);
    s << indent << "altitudeM: ";
    Printer<double>::stream(s, indent + "  ", v.altitudeM);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MS5837_MESSAGE_MS5837_DATA_H