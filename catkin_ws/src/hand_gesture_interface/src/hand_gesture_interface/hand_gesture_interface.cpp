#include "hand_gesture_interface/hand_gesture_interface.h"

//vector <float> landmark_X_, landmark_Y_;
//==================================================
//Constructor
HandGestureInterface::HandGestureInterface()
{
    handGesture_pub_ = nh_.advertise<hand_gesture_msgs::HandGesture>("hand_gesture", 1000);
    landmarks_sub_ = nh_.subscribe("landmarks_topic", 10, &HandGestureInterface::getLandmarksInfo, this);
}

//Destructor
HandGestureInterface::~HandGestureInterface(){
}

////////////////////////////////////////////////////////////////////////////////
////ASSIGN GESTURE 			 												////
////////////////////////////////////////////////////////////////////////////////
/**
 * @brief    Function to set the gestures to recognize.
 *
 *
 *
 * @param                
 */
void HandGestureInterface::assignGestures(){
	//To check if landmarks are ok:
	// for(int w =0; w<21;w++){
	// 	cout<<"\nLandmark X: "<<landmark_X_[w]<<"\t\tLandmarkY: "<<landmark_Y_[w]<<endl;
	// }

    // finger states
    thumbIsOpen = false;
    firstFingerIsOpen = false;
    secondFingerIsOpen = false;
    thirdFingerIsOpen = false;
    fourthFingerIsOpen = false;


    // Orientation: true if the thumb is on the left side of the "normalized" image
    orientation = true;

    if (landmark_X_[5] > landmark_X_[17]){
        orientation = false;
    }

    // Hand is oriented with thumb on left side (orientation == True)
    float pseudoFixKeyPoint = landmark_X_[2];
        
    if (orientation && landmark_X_[3] < pseudoFixKeyPoint && landmark_X_[4] < pseudoFixKeyPoint)
    {
        thumbIsOpen = true;
    }
    // Hand is oriented with thumb on right side (orientation == False)
    if (!orientation && landmark_X_[3] > pseudoFixKeyPoint && landmark_X_[4] > pseudoFixKeyPoint)
    {
        thumbIsOpen = true;
    }



    //Check coordinates position of index finger:
    pseudoFixKeyPoint = landmark_Y_[6];
    if (landmark_Y_[7] < pseudoFixKeyPoint && landmark_Y_[8] < landmark_Y_[7])
    {
        firstFingerIsOpen = true;
    }

    //Check coordinates position of middle finger:
    pseudoFixKeyPoint = landmark_Y_[10];
    if (landmark_Y_[11] < pseudoFixKeyPoint && landmark_Y_[12] < landmark_Y_[11])
    {
        secondFingerIsOpen = true;
    }

    //Check coordinates position of ring finger:
    pseudoFixKeyPoint = landmark_Y_[14];
    if (landmark_Y_[15] < pseudoFixKeyPoint && landmark_Y_[16] < landmark_Y_[15])
    {
        thirdFingerIsOpen = true;
    }

    //Check coordinates position of piinky finger:
    pseudoFixKeyPoint = landmark_Y_[18];
    if (landmark_Y_[19] < pseudoFixKeyPoint && landmark_Y_[20] < landmark_Y_[19])
    {
        fourthFingerIsOpen = true;
    }




    //Assing a specific gesture, comparing whitch fingers are 'up' or 'down':
    if (thumbIsOpen && firstFingerIsOpen && secondFingerIsOpen && thirdFingerIsOpen && fourthFingerIsOpen)
    {
    	_gesto = 5;
        _gestoStr = "CINCO";
    }
    else if (!thumbIsOpen && firstFingerIsOpen && secondFingerIsOpen && thirdFingerIsOpen && fourthFingerIsOpen)
    {            
    	_gesto = 4;
    	_gestoStr = "CUATRO";
    }
    else if (thumbIsOpen && firstFingerIsOpen && secondFingerIsOpen && !thirdFingerIsOpen && !fourthFingerIsOpen)
    {
    	_gesto = 3;
        _gestoStr = "TRES";
    }
    else if (!thumbIsOpen && firstFingerIsOpen && secondFingerIsOpen && thirdFingerIsOpen && !fourthFingerIsOpen)
    {
    	_gesto = 3;
        _gestoStr = "TRES";
    }
    else if (thumbIsOpen && firstFingerIsOpen && !secondFingerIsOpen && !thirdFingerIsOpen && !fourthFingerIsOpen)
    {
    	_gesto = 2;
        _gestoStr = "DOS";
    }
    else if (!thumbIsOpen && firstFingerIsOpen && secondFingerIsOpen && !thirdFingerIsOpen && !fourthFingerIsOpen)
    {
    	_gesto = 2;
        _gestoStr = "DOS";
    }
    else if (!thumbIsOpen && firstFingerIsOpen && !secondFingerIsOpen && !thirdFingerIsOpen && !fourthFingerIsOpen)
    {
    	_gesto = 1;
        _gestoStr = "UNO";
    }
    else if (!thumbIsOpen && !firstFingerIsOpen && !secondFingerIsOpen && !thirdFingerIsOpen && !fourthFingerIsOpen)
    {
    	_gesto = 0;
        _gestoStr = "CERO";
    }
    else
    {
    	_gesto = 111;
        _gestoStr = "*none*";       
    }
}
////////////////////////////////////////////////////////////////////////////////
////SEND INFO 	 			 												////
////////////////////////////////////////////////////////////////////////////////
/**
 * @brief    Function to send the gestures.
 *
 *
 *
 * @param                
 */
void HandGestureInterface::sendGestureInfo(){
	//ros::Duration seconds_sleep(0.01);

	hand_gesture_msgs::HandGesture mensajeAEnviar;
	mensajeAEnviar.num_fingers = _gesto;
	mensajeAEnviar.gesture = _gestoStr;

	// while(handGesture_pub_.getNumSubscribers()<1){
	// 	seconds_sleep.sleep();
	// }

	handGesture_pub_.publish(mensajeAEnviar);
	//seconds_sleep.sleep();

    landmark_X_.clear();
    landmark_Y_.clear();

	cout<<"Número: "<<mensajeAEnviar.num_fingers<<endl;
	cout<<"Nombre: "<<mensajeAEnviar.gesture<<endl;
	cout<<"----------------------------------------------"<<endl;
}
////////////////////////////////////////////////////////////////////////////////
////GET INFO 	 			 												////
////////////////////////////////////////////////////////////////////////////////
/**
 * @brief    Function to obtain the Landmarks information.
 *
 *
 *
 * @param                
 */
void HandGestureInterface::getLandmarksInfo(const hand_gesture_msgs::HandLandmarks::ConstPtr &msg)
{
    cout <<"Recibo mensaje!!!!!" << endl;
    ROS_INFO("good");
    for(int l = 0; l < msg->landmarks.size(); l++){
		ROS_INFO("good");
		cout<<"Number: "<<msg->landmarks[l].number<<endl;
		cout<<"Name: "<<msg->landmarks[l].name<<endl;
		cout<<"Coord_X: "<<msg->landmarks[l].coordinates[0]<<endl;
		cout<<"Coord_Y: "<<msg->landmarks[l].coordinates[1]<<endl;
		cout<<"----------------------------------------------"<<endl;

		landmark_X_.push_back(msg->landmarks[l].coordinates[0]);
		landmark_Y_.push_back(msg->landmarks[l].coordinates[1]);
	}

	// for(int w =0; w<21;w++){
	// 	cout<<"\nLandmark X: "<<landmark_X_[w]<<"\t\tLandmarkY: "<<landmark_Y_[w]<<endl;
	// }

	this->assignGestures();
	//cout<<"AssignGestures OK"<<endl;
	this->sendGestureInfo();
	//cout<<"SendGestureInfo OK"<<endl;
}
//==================================================

/**
* Main function of mediapipe_interface.
*/
int main(int argc, char **argv){
	
	ros::init (argc, argv, "hand_gesture_interface_node");

	ROS_INFO("hand_gesture_interface_node creado y registrado");

    	HandGestureInterface hgInter;

    	ros::spin();

	return 0;
}
