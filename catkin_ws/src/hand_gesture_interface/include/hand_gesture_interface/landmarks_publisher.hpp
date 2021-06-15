#ifndef LANDMARKSPUBLISHER_H
#define LANDMARKSPUBLISHER_H

#include "ros/ros.h"
#include <std_msgs/Empty.h>

#include <hand_gesture_msgs/HandLandmarks.h>
#include <hand_gesture_msgs/HandLandmark.h>

#include <iostream>
#include <string>
#include <vector>

using namespace std;


class LandmarksPublisher{
	public:
		//Constructor and Destructor.
	    LandmarksPublisher();
	    ~LandmarksPublisher();

	    void sendLandmarksInfo_Test();
	    void start();

	private:
		ros::NodeHandle nh_;
        ros::Publisher landmarks_pub_;

        int number_;
        vector <float> test_coordX, test_coordY;
};


#endif  /* LANDMARKSPUBLISHER */