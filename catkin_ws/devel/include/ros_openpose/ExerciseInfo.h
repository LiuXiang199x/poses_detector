// Generated by gencpp from file ros_openpose/ExerciseInfo.msg
// DO NOT EDIT!


#ifndef ROS_OPENPOSE_MESSAGE_EXERCISEINFO_H
#define ROS_OPENPOSE_MESSAGE_EXERCISEINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_openpose
{
template <class ContainerAllocator>
struct ExerciseInfo_
{
  typedef ExerciseInfo_<ContainerAllocator> Type;

  ExerciseInfo_()
    : name()
    , data()  {
    }
  ExerciseInfo_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::ros_openpose::ExerciseInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_openpose::ExerciseInfo_<ContainerAllocator> const> ConstPtr;

}; // struct ExerciseInfo_

typedef ::ros_openpose::ExerciseInfo_<std::allocator<void> > ExerciseInfo;

typedef boost::shared_ptr< ::ros_openpose::ExerciseInfo > ExerciseInfoPtr;
typedef boost::shared_ptr< ::ros_openpose::ExerciseInfo const> ExerciseInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_openpose::ExerciseInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_openpose::ExerciseInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_openpose

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ros_openpose': ['/home/haobing/catkin_ws/src/openpose_ros/ros_openpose/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_openpose::ExerciseInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_openpose::ExerciseInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_openpose::ExerciseInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_openpose::ExerciseInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_openpose::ExerciseInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_openpose::ExerciseInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_openpose::ExerciseInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "33b68010f41f0b5e92d9f3d75c92f13f";
  }

  static const char* value(const ::ros_openpose::ExerciseInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x33b68010f41f0b5eULL;
  static const uint64_t static_value2 = 0x92d9f3d75c92f13fULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_openpose::ExerciseInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_openpose/ExerciseInfo";
  }

  static const char* value(const ::ros_openpose::ExerciseInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_openpose::ExerciseInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n\
float32[] data\n\
\n\
";
  }

  static const char* value(const ::ros_openpose::ExerciseInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_openpose::ExerciseInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ExerciseInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_openpose::ExerciseInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_openpose::ExerciseInfo_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_OPENPOSE_MESSAGE_EXERCISEINFO_H
