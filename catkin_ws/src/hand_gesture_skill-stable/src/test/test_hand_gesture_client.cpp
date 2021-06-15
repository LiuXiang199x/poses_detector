#include <ros/ros.h>

#include <actionlib/client/simple_action_client.h>
#include <hand_gesture_skill/HandGestureAction.h>
#include "std_msgs/String.h"
#include "std_msgs/Empty.h"

#include <iostream>

using namespace std;

typedef actionlib::SimpleActionClient<hand_gesture_skill::HandGestureAction> Client;

class HandGestureClient {
  public:
    HandGestureClient() : action_client_("hand_gesture_skill", true){

      //ROS_INFO("Subscriber started.");
      //sub = nh.subscribe("action_client", 1000, &HandGestureClient::commandCallback, this);

      startSkill();

      ROS_INFO("Waiting for action server to start.");
      action_client_.waitForServer();
      ROS_INFO("Action server started, sending goal.");
    }

    void startSkill(){
      ros::Duration seconds_sleep(0.3);
      skill_pub_ = nh.advertise<std_msgs::Empty>("hand_gesture_skill/start", 100);
      std_msgs::Empty myMsg;
      seconds_sleep.sleep(); 
      skill_pub_.publish(myMsg);
      seconds_sleep.sleep();       
    }

    void doStuff(string order){

      hand_gesture_skill::HandGestureGoal goal;
      ROS_INFO("%s", order.c_str());
      goal.num_minigame = order;

      // Need boost::bind to pass in the 'this' pointer
      action_client_.sendGoal(goal,
                  boost::bind(&HandGestureClient::doneCb, this, _1, _2),
                  Client::SimpleActiveCallback(),
                  boost::bind(&HandGestureClient::feedbackCb, this, _1));

    }

    void doneCb(const actionlib::SimpleClientGoalState& state, const hand_gesture_skill::HandGestureResultConstPtr& result){
      
      ROS_INFO("Finished in state [%s]", state.toString().c_str());
      ROS_INFO("Answer: %i", result->end_minigame);
      //ros::shutdown();
    }

    void feedbackCb(const hand_gesture_skill::HandGestureFeedbackConstPtr& feedback){
      ROS_INFO("Number of questions answered: %i", feedback->questions_completed);
    }
/*
    void commandCallback(const std_msgs::String::ConstPtr& msg){
      if(strcmp(msg->data.c_str(), "reset")==0)
      {
        ROS_INFO("Proceeding to resend the goal");
        cout<<"Press enter to confirm..."<<endl;
        cin.get();
        doStuff("EMPIEZA");
      }
      else if(strcmp(msg->data.c_str(), "preempt")==0)
      {
        ROS_INFO("Proceeding to cancel the goal");
        action_client_.cancelGoal();
      }
      else
        ROS_INFO("Wrong command");
    }
*/

  private:
    Client action_client_;
    ros::NodeHandle nh;
    ros::Publisher skill_pub_;
    //ros::Subscriber sub;
};

int main (int argc, char **argv)
{
  ros::init(argc, argv, "test_hand_gesture_client");

  HandGestureClient my_client;
  ros::Rate loop_rate(10);
  
  while(ros::ok())
  {
    cout<<"Press enter to send the goal..."<<endl;
    cin.get();
    my_client.doStuff("EMPIEZA");
    ros::spinOnce();
    loop_rate.sleep();
  }  
  return 0;
}