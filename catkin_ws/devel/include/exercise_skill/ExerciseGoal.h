// Generated by gencpp from file exercise_skill/ExerciseGoal.msg
// DO NOT EDIT!


#ifndef EXERCISE_SKILL_MESSAGE_EXERCISEGOAL_H
#define EXERCISE_SKILL_MESSAGE_EXERCISEGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace exercise_skill
{
template <class ContainerAllocator>
struct ExerciseGoal_
{
  typedef ExerciseGoal_<ContainerAllocator> Type;

  ExerciseGoal_()
    : skill_command()
    , max_time(0)
    , number_plays(0)
    , proactivity(0)
    , skill_status()  {
    }
  ExerciseGoal_(const ContainerAllocator& _alloc)
    : skill_command(_alloc)
    , max_time(0)
    , number_plays(0)
    , proactivity(0)
    , skill_status(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _skill_command_type;
  _skill_command_type skill_command;

   typedef uint16_t _max_time_type;
  _max_time_type max_time;

   typedef uint16_t _number_plays_type;
  _number_plays_type number_plays;

   typedef uint16_t _proactivity_type;
  _proactivity_type proactivity;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _skill_status_type;
  _skill_status_type skill_status;





  typedef boost::shared_ptr< ::exercise_skill::ExerciseGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::exercise_skill::ExerciseGoal_<ContainerAllocator> const> ConstPtr;

}; // struct ExerciseGoal_

typedef ::exercise_skill::ExerciseGoal_<std::allocator<void> > ExerciseGoal;

typedef boost::shared_ptr< ::exercise_skill::ExerciseGoal > ExerciseGoalPtr;
typedef boost::shared_ptr< ::exercise_skill::ExerciseGoal const> ExerciseGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::exercise_skill::ExerciseGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::exercise_skill::ExerciseGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace exercise_skill

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'interaction_msgs': ['/home/haobing/catkin_ws/src/interaction_msgs/msg'], 'exercise_skill': ['/home/haobing/catkin_ws/devel/share/exercise_skill/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'common_msgs': ['/home/haobing/catkin_ws/src/common_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::exercise_skill::ExerciseGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exercise_skill::ExerciseGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exercise_skill::ExerciseGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exercise_skill::ExerciseGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exercise_skill::ExerciseGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exercise_skill::ExerciseGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::exercise_skill::ExerciseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "483e449faa3be5acb144b338632da130";
  }

  static const char* value(const ::exercise_skill::ExerciseGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x483e449faa3be5acULL;
  static const uint64_t static_value2 = 0xb144b338632da130ULL;
};

template<class ContainerAllocator>
struct DataType< ::exercise_skill::ExerciseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "exercise_skill/ExerciseGoal";
  }

  static const char* value(const ::exercise_skill::ExerciseGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::exercise_skill::ExerciseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
string skill_command\n\
uint16 max_time\n\
uint16 number_plays\n\
uint16 proactivity\n\
string skill_status\n\
";
  }

  static const char* value(const ::exercise_skill::ExerciseGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::exercise_skill::ExerciseGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.skill_command);
      stream.next(m.max_time);
      stream.next(m.number_plays);
      stream.next(m.proactivity);
      stream.next(m.skill_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ExerciseGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::exercise_skill::ExerciseGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::exercise_skill::ExerciseGoal_<ContainerAllocator>& v)
  {
    s << indent << "skill_command: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.skill_command);
    s << indent << "max_time: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.max_time);
    s << indent << "number_plays: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.number_plays);
    s << indent << "proactivity: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.proactivity);
    s << indent << "skill_status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.skill_status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXERCISE_SKILL_MESSAGE_EXERCISEGOAL_H
