#include "ros/ros.h"
#include "std_msgs/Empty.h"

#include <iostream>

using namespace std;

//==================================================

//==================================================


/**
 * @brief    Function to turn on/off the hand gesture detector (mediapipe).
 *
 *
 * @param
 * 
 */
void on_Mediapipe(const std_msgs::Empty::ConstPtr& msg){
		//To execute mediapipe (Hand gesture detector).
		ROS_INFO("Ejecutando mediapipe...");
		
		char cmd[40];
		strcpy(cmd,"xterm -e roslaunch hand_gesture mediapipe.launch");
		system(cmd);

		ROS_INFO("Mediapipe ejecutado.");
}

int main(int argc, char **argv){
	//Resgistra el nombre del nodo
	ros::init(argc, argv, "mediapipeON_node");
	ros::NodeHandle nh_;
	ROS_INFO("mediapipeON_node creado y registrado");
	
	ros::Subscriber mediapipe_sub_ = nh_.subscribe("mediapipeON_topic", 10, on_Mediapipe);

	/** Loop infinito para que no finalice la ejecución del nodo y siempre se pueda llamar al callback */
	ros::spin();

	return 0;
}