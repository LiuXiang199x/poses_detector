#ifndef HANDGESTURE_H
#define HANDGESTURE_H

#include "ros/ros.h"
#include <std_msgs/Empty.h>

#include <iostream>
#include <string>
#include <stdlib.h>
#include <time.h>


//Skill header
#include <skill/skill.h>

//ActionLib headers
#include <actionlib/server/simple_action_server.h>
#include <hand_gesture_skill/HandGestureAction.h>

//CA communication headers 
#include <interaction_msgs/CA.h>
#include <interaction_msgs/CaResult.h>
#include <common_msgs/KeyValuePair.h>

//Gesture info
#include <hand_gesture_msgs/HandGesture.h>

//Nombre de la skill
#define SKILL_NAME  "hand_gesture_skill" 

using namespace std;


class HandGestureSkill : public Skill{
	public:
		//Constructor and Destructor.
	    HandGestureSkill();
	    ~HandGestureSkill();
		
		//Inherited skill functions.
		void create_msg_srv();
		void shutdown_msg_srv();

		//Actionlib functions.
		void executeCallback(const hand_gesture_skill::HandGestureGoalConstPtr &goal);

	    //void gameMenu();
	    void minigame1();
	    void minigame2();
	    void minigame3();

	    //To change from a number to a string the type of gesture recognized.
	    //void changeToStringHGInfo(int gameNum);

	    //To turn on/off mediapipe (Hand gesture detector).
	    void on_Mediapipe();
	    void off_Mediapipe();
	    //To get the info obtained by the hand gesture detector.
	    void getHandGestureInfo(const hand_gesture_msgs::HandGesture::ConstPtr& hgInfo);

		//HRI callback
		void hriCallback(const interaction_msgs::CaResult::ConstPtr& msg);
	    //To create and send CAs.
	    void menu_CAs(int caNum);
	    void tablet_menu_CA();
	    void tablet_text_CA(int caGameNum);
	    void game_CA(string caName);


	private:
		//To store the type of gesture recognized in 'string' and 'int' format.
		int _gesto, num_incorrectAnswer;
		string _gestoStr, respuestaMenu;
		bool menu_ok, no_answerOk;

		int i;	//To make a loop for asking the differents questions.
		bool print;	//To print the question just once on the screen.
		bool exit;	//To indicate that the minigame has finished.

		ros::NodeHandle nh_;
		ros::Publisher ca_pub_, mediapipeON_pub_, mediapipeOFF_pub_;
		ros::Subscriber ca_sub_, handGesture_sub_;
		ros::ServiceClient client_;
		
		// Actionlib elements
		actionlib::SimpleActionServer<hand_gesture_skill::HandGestureAction> action_server_;
		hand_gesture_skill::HandGestureFeedback feedback_;
		hand_gesture_skill::HandGestureResult result_;


		ros::Time initial_time, answer_time;
};


#endif  /* HANDGESTURE_H */