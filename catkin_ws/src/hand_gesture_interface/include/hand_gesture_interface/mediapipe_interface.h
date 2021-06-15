#ifndef MEDIAPIPEINTERFACE_H
#define MEDIAPIPEINTERFACE_H

#include "ros/ros.h"
#include <std_msgs/Empty.h>

#include <hand_gesture_msgs/HandLandmarks.h>
#include <hand_gesture_msgs/HandLandmark.h>

#include <iostream>
#include <string>
#include <vector>

//Headers required to establish a conexion between ROS and Mediapipe (Hand gesture detector).
#include "boost/interprocess/shared_memory_object.hpp"
#include "boost/interprocess/mapped_region.hpp"
//#include "boost/interprocess/managed_shared_memory.hpp"

using namespace std;


class MediapipeInterface{
	public:
		//Constructor and Destructor.
	    MediapipeInterface();
	    ~MediapipeInterface();

	    //To get the info obtained by the hand gesture detector.
	    void getMediapipeInfo();
	    //To send the type of gesture recognized.
	    void sendLandmarksInfo();

	    void start();

	private:
		ros::NodeHandle nh_;
		ros::Publisher landmarks_pub_;

		string nameL_;
		float *ptr_cx, *ptr_cy;

		vector <float> test_coordX, test_coordY;
};


#endif  /* MEDIAPIPEINTERFACE_H */