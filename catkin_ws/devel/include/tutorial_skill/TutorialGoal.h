// Generated by gencpp from file tutorial_skill/TutorialGoal.msg
// DO NOT EDIT!


#ifndef TUTORIAL_SKILL_MESSAGE_TUTORIALGOAL_H
#define TUTORIAL_SKILL_MESSAGE_TUTORIALGOAL_H


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
struct TutorialGoal_
{
  typedef TutorialGoal_<ContainerAllocator> Type;

  TutorialGoal_()
    : max_time(0)  {
    }
  TutorialGoal_(const ContainerAllocator& _alloc)
    : max_time(0)  {
  (void)_alloc;
    }



   typedef uint8_t _max_time_type;
  _max_time_type max_time;





  typedef boost::shared_ptr< ::tutorial_skill::TutorialGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tutorial_skill::TutorialGoal_<ContainerAllocator> const> ConstPtr;

}; // struct TutorialGoal_

typedef ::tutorial_skill::TutorialGoal_<std::allocator<void> > TutorialGoal;

typedef boost::shared_ptr< ::tutorial_skill::TutorialGoal > TutorialGoalPtr;
typedef boost::shared_ptr< ::tutorial_skill::TutorialGoal const> TutorialGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tutorial_skill::TutorialGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tutorial_skill::TutorialGoal_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::tutorial_skill::TutorialGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tutorial_skill::TutorialGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tutorial_skill::TutorialGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tutorial_skill::TutorialGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tutorial_skill::TutorialGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tutorial_skill::TutorialGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tutorial_skill::TutorialGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c409dd1e90c9be656927fb6838928cb6";
  }

  static const char* value(const ::tutorial_skill::TutorialGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc409dd1e90c9be65ULL;
  static const uint64_t static_value2 = 0x6927fb6838928cb6ULL;
};

template<class ContainerAllocator>
struct DataType< ::tutorial_skill::TutorialGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tutorial_skill/TutorialGoal";
  }

  static const char* value(const ::tutorial_skill::TutorialGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tutorial_skill::TutorialGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
uint8 max_time\n\
";
  }

  static const char* value(const ::tutorial_skill::TutorialGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tutorial_skill::TutorialGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.max_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TutorialGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tutorial_skill::TutorialGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tutorial_skill::TutorialGoal_<ContainerAllocator>& v)
  {
    s << indent << "max_time: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.max_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUTORIAL_SKILL_MESSAGE_TUTORIALGOAL_H
