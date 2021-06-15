// Generated by gencpp from file hand_gesture_msgs/HandLandmark.msg
// DO NOT EDIT!


#ifndef HAND_GESTURE_MSGS_MESSAGE_HANDLANDMARK_H
#define HAND_GESTURE_MSGS_MESSAGE_HANDLANDMARK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hand_gesture_msgs
{
template <class ContainerAllocator>
struct HandLandmark_
{
  typedef HandLandmark_<ContainerAllocator> Type;

  HandLandmark_()
    : number(0)
    , name()
    , coordinates()  {
    }
  HandLandmark_(const ContainerAllocator& _alloc)
    : number(0)
    , name(_alloc)
    , coordinates(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _number_type;
  _number_type number;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _coordinates_type;
  _coordinates_type coordinates;





  typedef boost::shared_ptr< ::hand_gesture_msgs::HandLandmark_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hand_gesture_msgs::HandLandmark_<ContainerAllocator> const> ConstPtr;

}; // struct HandLandmark_

typedef ::hand_gesture_msgs::HandLandmark_<std::allocator<void> > HandLandmark;

typedef boost::shared_ptr< ::hand_gesture_msgs::HandLandmark > HandLandmarkPtr;
typedef boost::shared_ptr< ::hand_gesture_msgs::HandLandmark const> HandLandmarkConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hand_gesture_msgs::HandLandmark_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hand_gesture_msgs::HandLandmark_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hand_gesture_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'hand_gesture_msgs': ['/home/haobing/catkin_ws/src/hand_gesture_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hand_gesture_msgs::HandLandmark_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hand_gesture_msgs::HandLandmark_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_gesture_msgs::HandLandmark_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hand_gesture_msgs::HandLandmark_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_gesture_msgs::HandLandmark_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hand_gesture_msgs::HandLandmark_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hand_gesture_msgs::HandLandmark_<ContainerAllocator> >
{
  static const char* value()
  {
    return "af09f7d0e0a50b4df9d66c15e2f8a9e1";
  }

  static const char* value(const ::hand_gesture_msgs::HandLandmark_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaf09f7d0e0a50b4dULL;
  static const uint64_t static_value2 = 0xf9d66c15e2f8a9e1ULL;
};

template<class ContainerAllocator>
struct DataType< ::hand_gesture_msgs::HandLandmark_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hand_gesture_msgs/HandLandmark";
  }

  static const char* value(const ::hand_gesture_msgs::HandLandmark_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hand_gesture_msgs::HandLandmark_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message represents a single hand landmark\n\
\n\
int32 number  # from 0 to 20\n\
string name  # see README.md for more info\n\
float32[] coordinates  # coordinates x and y\n\
";
  }

  static const char* value(const ::hand_gesture_msgs::HandLandmark_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hand_gesture_msgs::HandLandmark_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.number);
      stream.next(m.name);
      stream.next(m.coordinates);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HandLandmark_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hand_gesture_msgs::HandLandmark_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hand_gesture_msgs::HandLandmark_<ContainerAllocator>& v)
  {
    s << indent << "number: ";
    Printer<int32_t>::stream(s, indent + "  ", v.number);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "coordinates[]" << std::endl;
    for (size_t i = 0; i < v.coordinates.size(); ++i)
    {
      s << indent << "  coordinates[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.coordinates[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // HAND_GESTURE_MSGS_MESSAGE_HANDLANDMARK_H
