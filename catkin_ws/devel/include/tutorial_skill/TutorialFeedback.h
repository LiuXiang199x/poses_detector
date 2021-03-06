// Generated by gencpp from file tutorial_skill/TutorialFeedback.msg
// DO NOT EDIT!


#ifndef TUTORIAL_SKILL_MESSAGE_TUTORIALFEEDBACK_H
#define TUTORIAL_SKILL_MESSAGE_TUTORIALFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <common_msgs/KeyValuePair.h>

namespace tutorial_skill
{
template <class ContainerAllocator>
struct TutorialFeedback_
{
  typedef TutorialFeedback_<ContainerAllocator> Type;

  TutorialFeedback_()
    : app_status()
    , percentage_completed(0)
    , engagement(false)
    , response_params()  {
    }
  TutorialFeedback_(const ContainerAllocator& _alloc)
    : app_status(_alloc)
    , percentage_completed(0)
    , engagement(false)
    , response_params(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _app_status_type;
  _app_status_type app_status;

   typedef uint8_t _percentage_completed_type;
  _percentage_completed_type percentage_completed;

   typedef uint8_t _engagement_type;
  _engagement_type engagement;

   typedef std::vector< ::common_msgs::KeyValuePair_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::common_msgs::KeyValuePair_<ContainerAllocator> >::other >  _response_params_type;
  _response_params_type response_params;





  typedef boost::shared_ptr< ::tutorial_skill::TutorialFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tutorial_skill::TutorialFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct TutorialFeedback_

typedef ::tutorial_skill::TutorialFeedback_<std::allocator<void> > TutorialFeedback;

typedef boost::shared_ptr< ::tutorial_skill::TutorialFeedback > TutorialFeedbackPtr;
typedef boost::shared_ptr< ::tutorial_skill::TutorialFeedback const> TutorialFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tutorial_skill::TutorialFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tutorial_skill::TutorialFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tutorial_skill

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'tutorial_skill': ['/home/haobing/catkin_ws/devel/share/tutorial_skill/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'common_msgs': ['/home/haobing/catkin_ws/src/common_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tutorial_skill::TutorialFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tutorial_skill::TutorialFeedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tutorial_skill::TutorialFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tutorial_skill::TutorialFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tutorial_skill::TutorialFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tutorial_skill::TutorialFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tutorial_skill::TutorialFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dd2a3b825f95b7d9c1ba587b6f0eb46f";
  }

  static const char* value(const ::tutorial_skill::TutorialFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdd2a3b825f95b7d9ULL;
  static const uint64_t static_value2 = 0xc1ba587b6f0eb46fULL;
};

template<class ContainerAllocator>
struct DataType< ::tutorial_skill::TutorialFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tutorial_skill/TutorialFeedback";
  }

  static const char* value(const ::tutorial_skill::TutorialFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tutorial_skill::TutorialFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
string app_status\n\
uint8 percentage_completed\n\
bool engagement\n\
common_msgs/KeyValuePair[] response_params\n\
\n\
\n\
================================================================================\n\
MSG: common_msgs/KeyValuePair\n\
#use standard header\n\
#Header header\n\
\n\
#string values for key and its value\n\
string key\n\
string value\n\
";
  }

  static const char* value(const ::tutorial_skill::TutorialFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tutorial_skill::TutorialFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.app_status);
      stream.next(m.percentage_completed);
      stream.next(m.engagement);
      stream.next(m.response_params);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TutorialFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tutorial_skill::TutorialFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tutorial_skill::TutorialFeedback_<ContainerAllocator>& v)
  {
    s << indent << "app_status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.app_status);
    s << indent << "percentage_completed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.percentage_completed);
    s << indent << "engagement: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.engagement);
    s << indent << "response_params[]" << std::endl;
    for (size_t i = 0; i < v.response_params.size(); ++i)
    {
      s << indent << "  response_params[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::common_msgs::KeyValuePair_<ContainerAllocator> >::stream(s, indent + "    ", v.response_params[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUTORIAL_SKILL_MESSAGE_TUTORIALFEEDBACK_H
