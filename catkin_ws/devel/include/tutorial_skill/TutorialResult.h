// Generated by gencpp from file tutorial_skill/TutorialResult.msg
// DO NOT EDIT!


#ifndef TUTORIAL_SKILL_MESSAGE_TUTORIALRESULT_H
#define TUTORIAL_SKILL_MESSAGE_TUTORIALRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tutorial_skill
{
template <class ContainerAllocator>
struct TutorialResult_
{
  typedef TutorialResult_<ContainerAllocator> Type;

  TutorialResult_()
    : skill_result(0)  {
    }
  TutorialResult_(const ContainerAllocator& _alloc)
    : skill_result(0)  {
  (void)_alloc;
    }



   typedef int8_t _skill_result_type;
  _skill_result_type skill_result;



  enum {
    ERROR = -1,
    SUCCESS = 0,
    FAIL = 1,
  };


  typedef boost::shared_ptr< ::tutorial_skill::TutorialResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tutorial_skill::TutorialResult_<ContainerAllocator> const> ConstPtr;

}; // struct TutorialResult_

typedef ::tutorial_skill::TutorialResult_<std::allocator<void> > TutorialResult;

typedef boost::shared_ptr< ::tutorial_skill::TutorialResult > TutorialResultPtr;
typedef boost::shared_ptr< ::tutorial_skill::TutorialResult const> TutorialResultConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tutorial_skill::TutorialResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tutorial_skill::TutorialResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tutorial_skill

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'tutorial_skill': ['/home/haobing/catkin_ws/devel/share/tutorial_skill/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'common_msgs': ['/home/haobing/catkin_ws/src/common_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tutorial_skill::TutorialResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tutorial_skill::TutorialResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tutorial_skill::TutorialResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tutorial_skill::TutorialResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tutorial_skill::TutorialResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tutorial_skill::TutorialResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tutorial_skill::TutorialResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4e5dc85de4836ff949b7a939d7ae0b33";
  }

  static const char* value(const ::tutorial_skill::TutorialResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4e5dc85de4836ff9ULL;
  static const uint64_t static_value2 = 0x49b7a939d7ae0b33ULL;
};

template<class ContainerAllocator>
struct DataType< ::tutorial_skill::TutorialResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tutorial_skill/TutorialResult";
  }

  static const char* value(const ::tutorial_skill::TutorialResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tutorial_skill::TutorialResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
int8 ERROR = -1\n\
int8 SUCCESS = 0\n\
int8 FAIL = 1\n\
int8 skill_result\n\
";
  }

  static const char* value(const ::tutorial_skill::TutorialResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tutorial_skill::TutorialResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.skill_result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TutorialResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tutorial_skill::TutorialResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tutorial_skill::TutorialResult_<ContainerAllocator>& v)
  {
    s << indent << "skill_result: ";
    Printer<int8_t>::stream(s, indent + "  ", v.skill_result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUTORIAL_SKILL_MESSAGE_TUTORIALRESULT_H
