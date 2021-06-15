#include "hand_gesture_interface/mediapipe_interface.h"

//==================================================
	//Constructor
	MediapipeInterface::MediapipeInterface(){
	}
	//Destructor
	MediapipeInterface::~MediapipeInterface(){
	}

////////////////////////////////////////////////////////////////////////////////
////MEDIAPIPE CONTROL		 												////
////////////////////////////////////////////////////////////////////////////////
	/**
     * @brief    Function to turn off the hand gesture detector (mediapipe).
     *
     *
     * @param
     * 
	 */
	void off_Mediapipe(const std_msgs::Empty::ConstPtr& msg){
		//To kill mediapipe (Hand gesture detector).
		ROS_INFO("Cerrando MediaPipe...");
		cout<<"CERRAR"<<endl;
		char cmd[40];
		strcpy(cmd,"pkill -f mediapipe");
		system(cmd);

		ROS_INFO("MediaPipe cerrado.");
	}

	/**
     * @brief    Function to comunicate this ROS node with the hand gesture detector of Mediapipe.
     *				With this function we obtain hand landmarks. 
     *
     *
     * @param                
	 */
	void MediapipeInterface::getMediapipeInfo(){
		using namespace boost::interprocess;
		/*
			typedef std::pair<float,float> coordinatesXY;
			shared_memory_object::remove("Boost");
			managed_shared_memory segment(open_only, "Boost");

			std::pair<coordinatesXY*, std::size_t> res;
			res = segment.find<coordinatesXY>("Hand coordinates");
			if(res.second == 21){
				std::cout<<"Prueba información recibida: "<<std::endl; //*res.first<<std::endl;
			}
			if(res.first){
				std::cout<<"AQUÍ SÍ"<<std::endl;
			}
			segment.destroy<coordinatesXY>("Hand coordinates");
		*/
		shared_memory_object shdmem_Med2Ros(open_or_create, "BoostL", read_write);
  		shdmem_Med2Ros.truncate(1024);

		mapped_region regionX(shdmem_Med2Ros, read_only);
        float* coordinatesX = static_cast<float*>(regionX.get_address());
        ptr_cx = coordinatesX;

                std::cout<<"Adress: "<<regionX.get_address()<<std::endl;
                std::cout<<"Adress: "<<regionX.get_size()<<std::endl;

                std::cout<<"Variable X f0: "<<coordinatesX<<std::endl;
                std::cout<<"Variable X f0: "<<*coordinatesX<<std::endl;
                std::cout<<"Variable X f1: "<<coordinatesX+1<<std::endl;
                std::cout<<"Variable X f1: "<<*(coordinatesX+1)<<std::endl;
                std::cout<<"Variable X f3: "<<coordinatesX+3<<std::endl;
                std::cout<<"Variable X f3: "<<*(coordinatesX+3)<<std::endl;
                std::cout<<"Variable X f8: "<<coordinatesX+8<<std::endl;
                std::cout<<"Variable X f8: "<<*(coordinatesX+8)<<std::endl;
		mapped_region regionY(shdmem_Med2Ros, read_only);
        float* coordinatesY = static_cast<float*>(regionY.get_address());
        ptr_cy = coordinatesY;


                std::cout<<"Adress: "<<regionY.get_address()<<std::endl;
                std::cout<<"Adress: "<<regionY.get_size()<<std::endl;
                
                std::cout<<"Variable Y f0: "<<coordinatesY<<std::endl;
                std::cout<<"Variable Y f0: "<<*coordinatesY<<std::endl;
                std::cout<<"Variable Y f1: "<<coordinatesY+1<<std::endl;
                std::cout<<"Variable Y f1: "<<*(coordinatesY+1)<<std::endl;
                std::cout<<"Variable Y f3: "<<coordinatesY+3<<std::endl;
                std::cout<<"Variable Y f3: "<<*(coordinatesY+3)<<std::endl;
                std::cout<<"Variable Y f8: "<<coordinatesY+8<<std::endl;
                std::cout<<"Variable Y f8: "<<*(coordinatesY+8)<<std::endl;
  		//coordL_ = *res;
	}

	/**
     * @brief    Function to send the landmarks to the topic 'landmarks_topic'.
     *
     *
     * @param                
	 */	
	void MediapipeInterface::sendLandmarksInfo(){
		//Tiempo a dormir en cada interacción.
		ros::Duration seconds_sleep(0.1);

		landmarks_pub_ = nh_.advertise<hand_gesture_msgs::HandLandmarks>("landmarks_topic", 1000);
		
		hand_gesture_msgs::HandLandmarks mensajeAEnviar;
		hand_gesture_msgs::HandLandmark myLandmark;


		
		for(int l=0; l<21;l++){
			//To set the name of each landmark:
			if(l==0){
				nameL_ = "WRIST";
			}else if(l==1){
				nameL_ = "THUMB_CMC";
			}else if(l==2){
				nameL_ = "THUMB_MCP";
			}else if(l==3){
				nameL_ = "THUMB_IP";
			}else if(l==4){
				nameL_ = "THUMB_TIP";
			}else if(l==5){
				nameL_ = "INDEX_FINGER_MCP";
			}else if(l==6){
				nameL_ = "INDEX_FINGER_PIP";
			}else if(l==7){
				nameL_ = "INDEX_FINGER_DIP";
			}else if(l==8){
				nameL_ = "INDEX_FINGER_TIP";
			}else if(l==9){	
				nameL_ = "MIDDLE_FINGER_MCP";
			}else if(l==10){	
				nameL_ = "MIDDLE_FINGER_PIP";
			}else if(l==11){	
				nameL_ = "MIDDLE_FINGER_DIP";
			}else if(l==12){	
				nameL_ = "MIDDLE_FINGER_TIP";
			}else if(l==13){	
				nameL_ = "RING_FINGER_MCP";
			}else if(l==14){	
				nameL_ = "RING_FINGER_PIP";
			}else if(l==15){	
				nameL_ = "RING_FINGER_DIP";
			}else if(l==16){
				nameL_ = "RING_FINGER_TIP";
			}else if(l==17){	
				nameL_ = "PINKY_MCP";
			}else if(l==18){
				nameL_ = "PINKY_PIP";
			}else if(l==19){	
				nameL_ = "PINKY_DIP";
			}else if(l==20){
				nameL_ = "PINKY_TIP";
			}

			//To set the info of each landmark:
			myLandmark.number = l;
			myLandmark.name = nameL_;
			myLandmark.coordinates.push_back(ptr_cx[l]);
			myLandmark.coordinates.push_back(ptr_cy[l]);
			mensajeAEnviar.landmarks.push_back(myLandmark);
			myLandmark.coordinates.clear();
			// cout<<"NUM: "<<myLandmark.number<<endl;
			// cout<<"NAME: "<<myLandmark.name<<endl;
			// cout<<"COORD_X: "<<myLandmark.coordinates[0]<<endl;
			// cout<<"COORD_Y: "<<myLandmark.coordinates[1]<<endl;
			// cout<<"----------------------------------------------"<<endl;
		}

			landmarks_pub_.publish(mensajeAEnviar);
			seconds_sleep.sleep();
	}


	void MediapipeInterface::start(){
		/*Uncomment when works!!*/
		//getMediapipeInfo();	
		//sendLandmarksInfo();
	}
//==================================================


/**
* Main function of mediapipe_interface.
*/
int main(int argc, char **argv){
	
	ros::init (argc, argv, "mediapipe_interface_node");

	ROS_INFO("mediapipe_interface_node creado y registrado");
	
	ros::NodeHandle nh_;
	ros::Subscriber mediapipeOFF_sub_;
	ros::Duration seconds_sleep(0.1);

	mediapipeOFF_sub_ = nh_.subscribe("mediapipeOFF_topic", 10,off_Mediapipe);

	MediapipeInterface medInter;

	while (ros::ok()){
		medInter.start();
		ros::spinOnce();
		seconds_sleep.sleep();
	}

	return 0;
}
