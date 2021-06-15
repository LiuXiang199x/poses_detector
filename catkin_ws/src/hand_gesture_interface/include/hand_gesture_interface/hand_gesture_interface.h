#ifndef HANDGESTUREINTERFACE_H
#define HANDGESTUREINTERFACE_H

#include "ros/ros.h"

#include <hand_gesture_msgs/HandLandmarks.h>
#include <hand_gesture_msgs/HandLandmark.h>
#include <hand_gesture_msgs/HandGesture.h>

#include <iostream>
#include <string>
#include <vector>


using namespace std;


class HandGestureInterface{
	public:
		//Constructor and Destructor.
	    HandGestureInterface();
	    ~HandGestureInterface();

	    //To indicate the type of geture to be recognized.
	    void assignGestures();
	    //To send the type of gesture recognized.
	    void sendGestureInfo();
		//The callback to receive the landmarks
		void getLandmarksInfo(const hand_gesture_msgs::HandLandmarks::ConstPtr &);

	private:
		ros::NodeHandle nh_;
		ros::Publisher handGesture_pub_;
		ros::Subscriber landmarks_sub_;

		int _gesto;
		string _gestoStr;
		bool thumbIsOpen, firstFingerIsOpen, secondFingerIsOpen, thirdFingerIsOpen, fourthFingerIsOpen, orientation;
		vector <float> landmark_X_, landmark_Y_;
};


#endif  /* HANDGESTUREINTERFACE_H */