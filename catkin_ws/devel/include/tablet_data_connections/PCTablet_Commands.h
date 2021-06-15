// Generated by gencpp from file tablet_data_connections/PCTablet_Commands.msg
// DO NOT EDIT!


#ifndef TABLET_DATA_CONNECTIONS_MESSAGE_PCTABLET_COMMANDS_H
#define TABLET_DATA_CONNECTIONS_MESSAGE_PCTABLET_COMMANDS_H

#include <ros/service_traits.h>


#include <tablet_data_connections/PCTablet_CommandsRequest.h>
#include <tablet_data_connections/PCTablet_CommandsResponse.h>


namespace tablet_data_connections
{

struct PCTablet_Commands
{

typedef PCTablet_CommandsRequest Request;
typedef PCTablet_CommandsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PCTablet_Commands
} // namespace tablet_data_connections


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tablet_data_connections::PCTablet_Commands > {
  static const char* value()
  {
    return "9b3d578d85131ed0b96255aaed77a481";
  }

  static const char* value(const ::tablet_data_connections::PCTablet_Commands&) { return value(); }
};

template<>
struct DataType< ::tablet_data_connections::PCTablet_Commands > {
  static const char* value()
  {
    return "tablet_data_connections/PCTablet_Commands";
  }

  static const char* value(const ::tablet_data_connections::PCTablet_Commands&) { return value(); }
};


// service_traits::MD5Sum< ::tablet_data_connections::PCTablet_CommandsRequest> should match 
// service_traits::MD5Sum< ::tablet_data_connections::PCTablet_Commands > 
template<>
struct MD5Sum< ::tablet_data_connections::PCTablet_CommandsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tablet_data_connections::PCTablet_Commands >::value();
  }
  static const char* value(const ::tablet_data_connections::PCTablet_CommandsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tablet_data_connections::PCTablet_CommandsRequest> should match 
// service_traits::DataType< ::tablet_data_connections::PCTablet_Commands > 
template<>
struct DataType< ::tablet_data_connections::PCTablet_CommandsRequest>
{
  static const char* value()
  {
    return DataType< ::tablet_data_connections::PCTablet_Commands >::value();
  }
  static const char* value(const ::tablet_data_connections::PCTablet_CommandsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tablet_data_connections::PCTablet_CommandsResponse> should match 
// service_traits::MD5Sum< ::tablet_data_connections::PCTablet_Commands > 
template<>
struct MD5Sum< ::tablet_data_connections::PCTablet_CommandsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tablet_data_connections::PCTablet_Commands >::value();
  }
  static const char* value(const ::tablet_data_connections::PCTablet_CommandsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tablet_data_connections::PCTablet_CommandsResponse> should match 
// service_traits::DataType< ::tablet_data_connections::PCTablet_Commands > 
template<>
struct DataType< ::tablet_data_connections::PCTablet_CommandsResponse>
{
  static const char* value()
  {
    return DataType< ::tablet_data_connections::PCTablet_Commands >::value();
  }
  static const char* value(const ::tablet_data_connections::PCTablet_CommandsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TABLET_DATA_CONNECTIONS_MESSAGE_PCTABLET_COMMANDS_H
