// Generated by gencpp from file tablet_data_connections/PCTablet_CommandsRequest.msg
// DO NOT EDIT!


#ifndef TABLET_DATA_CONNECTIONS_MESSAGE_PCTABLET_COMMANDSREQUEST_H
#define TABLET_DATA_CONNECTIONS_MESSAGE_PCTABLET_COMMANDSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tablet_data_connections
{
template <class ContainerAllocator>
struct PCTablet_CommandsRequest_
{
  typedef PCTablet_CommandsRequest_<ContainerAllocator> Type;

  PCTablet_CommandsRequest_()
    : command()  {
    }
  PCTablet_CommandsRequest_(const ContainerAllocator& _alloc)
    : command(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _command_type;
  _command_type command;





  typedef boost::shared_ptr< ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PCTablet_CommandsRequest_

typedef ::tablet_data_connections::PCTablet_CommandsRequest_<std::allocator<void> > PCTablet_CommandsRequest;

typedef boost::shared_ptr< ::tablet_data_connections::PCTablet_CommandsRequest > PCTablet_CommandsRequestPtr;
typedef boost::shared_ptr< ::tablet_data_connections::PCTablet_CommandsRequest const> PCTablet_CommandsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tablet_data_connections

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'common_msgs': ['/home/haobing/catkin_ws/src/common_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cba5e21e920a3a2b7b375cb65b64cdea";
  }

  static const char* value(const ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcba5e21e920a3a2bULL;
  static const uint64_t static_value2 = 0x7b375cb65b64cdeaULL;
};

template<class ContainerAllocator>
struct DataType< ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tablet_data_connections/PCTablet_CommandsRequest";
  }

  static const char* value(const ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string command\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
\n\
";
  }

  static const char* value(const ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PCTablet_CommandsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tablet_data_connections::PCTablet_CommandsRequest_<ContainerAllocator>& v)
  {
    s << indent << "command: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.command);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TABLET_DATA_CONNECTIONS_MESSAGE_PCTABLET_COMMANDSREQUEST_H
