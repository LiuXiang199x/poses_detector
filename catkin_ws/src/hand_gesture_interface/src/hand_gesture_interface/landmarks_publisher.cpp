#include "hand_gesture_interface/landmarks_publisher.hpp"

/**
* Main function of mediapipe_interface.
*/
int main(int argc, char **argv)
{

	ros::init(argc, argv, "landmarks_publisher_node");

	ROS_INFO("mediapipe_interface_node creado y registrado");

	LandmarksPublisher medInter;

	
	medInter.start();
		

	return 0;
}

//==================================================
//Constructor
LandmarksPublisher::LandmarksPublisher()
{
	landmarks_pub_ = nh_.advertise<hand_gesture_msgs::HandLandmarks>("landmarks_topic", 1000);
	number_ = 0;
}
//Destructor
LandmarksPublisher::~LandmarksPublisher()
{
}
/**
     * @brief    Function to test the sending of landmarks.
     *
     *
     * @param                
	 */
void LandmarksPublisher::sendLandmarksInfo_Test()
{
	hand_gesture_msgs::HandLandmarks mensajeAEnviar;
	hand_gesture_msgs::HandLandmark myLandmark;

	/*	POSICIONES DE EJEMPLO PARA ESTABLECER CADA DEDO LEVANTADO:
					test_coordX ={0,0,9,4,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};	//Thumb finger up.
					test_coordY ={0,0,0,0,0,0,9,4,1,0,0,0,0,0,0,0,0,0,0,0,0};	//Index finger up.
					test_coordY ={0,0,0,0,0,0,0,0,0,0,9,4,1,0,0,0,0,0,0,0,0};	//Middle finger up.
					test_coordY ={0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,4,1,0,0,0,0};	//Ring finger up.
					test_coordY ={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,4,1};	//Pinky finger up.
		*/
	//	POSICIONES DE EJEMPLO PARA GESTOS DEL 0 AL 5:
	
	switch (number_)
	{
	case 0:
		{
			//Gesto = 0
			vector<float> vectX{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
			vector<float> vectY{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
			test_coordX = vectX;
			test_coordY = vectY;
			break;
		}
	case 1:
		{
			//Gesto = 1
			vector<float> vectX{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
			vector<float> vectY{0, 0, 0, 0, 0, 0, 9, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
			test_coordX = vectX;
			test_coordY = vectY;
			break;
		}
	case 2:
		{
			//Gesto = 2
			vector<float> vectX{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
			vector<float> vectY{0, 0, 0, 0, 0, 0, 9, 4, 1, 0, 9, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0};
			test_coordX = vectX;
			test_coordY = vectY;
			break;
		}
	case 3:
		{
			//Gesto = 3
			vector<float> vectX{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
			vector<float> vectY{0, 0, 0, 0, 0, 0, 9, 4, 1, 0, 9, 4, 1, 0, 9, 4, 1, 0, 0, 0, 0};
			test_coordX = vectX;
			test_coordY = vectY;
			break;
		}
	case 4:
		{		
			//Gesto = 4
			vector<float> vectX{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
			vector<float> vectY{0, 0, 0, 0, 0, 0, 9, 4, 1, 0, 9, 4, 1, 0, 9, 4, 1, 0, 9, 4, 1};
			test_coordX = vectX;
			test_coordY = vectY;
			break;
		}
	case 5:
		{//Gesto = 5
			vector<float> vectX{0.0, 0.0, 9.0, 4.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};
			vector<float> vectY{0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 9.0, 4.0, 1.0, 0.0, 9.0, 4.0, 1.0, 0.0, 9.0, 4.0, 1.0, 0.0, 9.0, 4.0, 1.0};
			test_coordX = vectX;
			test_coordY = vectY;
			number_ = -1;
			break;
		}
	default:
		{
			number_ = -1;
			break;
		}
	}
	cout << "The number is: " << number_ << endl;
	number_++;

	string nameL = "";
	for (int l = 0; l < 21; l++)
	{
		//To set the name of each landmark:
		if (l == 0)
		{
			nameL = "WRIST";
		}
		else if (l == 1)
		{
			nameL = "THUMB_CMC";
		}
		else if (l == 2)
		{
			nameL = "THUMB_MCP";
		}
		else if (l == 3)
		{
			nameL = "THUMB_IP";
		}
		else if (l == 4)
		{
			nameL = "THUMB_TIP";
		}
		else if (l == 5)
		{
			nameL = "INDEX_FINGER_MCP";
		}
		else if (l == 6)
		{
			nameL = "INDEX_FINGER_PIP";
		}
		else if (l == 7)
		{
			nameL = "INDEX_FINGER_DIP";
		}
		else if (l == 8)
		{
			nameL = "INDEX_FINGER_TIP";
		}
		else if (l == 9)
		{
			nameL = "MIDDLE_FINGER_MCP";
		}
		else if (l == 10)
		{
			nameL = "MIDDLE_FINGER_PIP";
		}
		else if (l == 11)
		{
			nameL = "MIDDLE_FINGER_DIP";
		}
		else if (l == 12)
		{
			nameL = "MIDDLE_FINGER_TIP";
		}
		else if (l == 13)
		{
			nameL = "RING_FINGER_MCP";
		}
		else if (l == 14)
		{
			nameL = "RING_FINGER_PIP";
		}
		else if (l == 15)
		{
			nameL = "RING_FINGER_DIP";
		}
		else if (l == 16)
		{
			nameL = "RING_FINGER_TIP";
		}
		else if (l == 17)
		{
			nameL = "PINKY_MCP";
		}
		else if (l == 18)
		{
			nameL = "PINKY_PIP";
		}
		else if (l == 19)
		{
			nameL = "PINKY_DIP";
		}
		else if (l == 20)
		{
			nameL = "PINKY_TIP";
		}

		//To set the info of each landmark:
		myLandmark.number = l;
		myLandmark.name = nameL;
		myLandmark.coordinates.push_back(test_coordX[l]);
		myLandmark.coordinates.push_back(test_coordY[l]);
		mensajeAEnviar.landmarks.push_back(myLandmark);
		myLandmark.coordinates.clear();
		// cout<<"NUM: "<<myLandmark.number<<endl;
		// cout<<"NAME: "<<myLandmark.name<<endl;
		// cout<<"COORD_X: "<<myLandmark.coordinates[0]<<endl;
		// cout<<"COORD_Y: "<<myLandmark.coordinates[1]<<endl;
		// cout<<"----------------------------------------------"<<endl;
	}

	landmarks_pub_.publish(mensajeAEnviar);
}

/**
 * @brief 
 * 
 */
void LandmarksPublisher::start()
{
	ros::Duration seconds_sleep(0.001);
	//**To test the pass of landmarks: **
	cout<<"Enter to send info:"<<endl;
	cin.get();
	while (ros::ok())
	{
		sendLandmarksInfo_Test();
		seconds_sleep.sleep();
	}
}