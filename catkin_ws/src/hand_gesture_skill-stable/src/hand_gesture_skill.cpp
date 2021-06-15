#include "hand_gesture_skill/hand_gesture_skill.h"


//==================================================
	//Constructor
	HandGestureSkill::HandGestureSkill() : 
    	Skill(SKILL_NAME, CONDITIONAL),
    	action_server_(nh_, SKILL_NAME,boost::bind(&HandGestureSkill::executeCallback,this,_1), false),
    	_gesto(0), _gestoStr("none"), num_incorrectAnswer(0), respuestaMenu(""),menu_ok(true), i(0), print(true), exit(false)
	{
		
	}
	//Destructor
	HandGestureSkill::~HandGestureSkill(){
	}


////////////////////////////////////////////////////////////////////////////////
////SKILL-RELATED FUNCTIONS													////
////////////////////////////////////////////////////////////////////////////////
	void HandGestureSkill::create_msg_srv(){
		
		// Create publisers and subscribers
		ROS_INFO("START RECEIVED. CREATING PUBLISHERS AND SUBSCRIBERS");

		ca_pub_ = nh_.advertise<interaction_msgs::CA>("hri_manager/ca_activations", 1000);
		ca_sub_ = nh_.subscribe("hri_manager/response", 10, &HandGestureSkill::hriCallback, this);

		mediapipeON_pub_ = nh_.advertise<std_msgs::Empty>("mediapipeON_topic", 1000);
		mediapipeOFF_pub_ = nh_.advertise<std_msgs::Empty>("mediapipeOFF_topic", 1000);
		handGesture_sub_ = nh_.subscribe("hand_gesture", 10, &HandGestureSkill::getHandGestureInfo, this);


		action_server_.start();
	}

	void HandGestureSkill::shutdown_msg_srv(){

		//Shutdown publishers and subscribers
		ROS_INFO("STOP RECEIVED. DESTROYING PUBLISHERS AND SUBSCRIBERS");
		//ca_pub_.shutdown(); // Bug: publishers cannot shut down.
		ca_sub_.shutdown();
		handGesture_sub_.shutdown();
	}


////////////////////////////////////////////////////////////////////////////////
////EXECUTE CALLBACK 		 												////
////////////////////////////////////////////////////////////////////////////////
	void HandGestureSkill::executeCallback(const hand_gesture_skill::HandGestureGoalConstPtr &goal){
	
    	int respuesta;			//Variable para guardar la respuesta del usuario.
		bool exit = false;		//Variable para salir del loop del menú de selección de juego.
		int success = -1;

		//Tiempo a dormir en cada interacción.
		ros::Duration seconds_sleep(0.01);

		menu_CAs(0);

    	ROS_INFO("\tGoal: %s",goal->num_minigame.c_str());
    	//cout<<"\n\t\tRunning info: "<<is_running()<<endl;

		while(!exit && ros::ok() && !action_server_.isPreemptRequested()){
			
			if(menu_ok){
				tablet_menu_CA();
				menu_ok = false;
			}

			cout<<"\n\t\t--MENÚ DE JUEGO--"<<endl;
			cout<<"\n\t1.-CÁLCULO DACTILAR."<<endl;
			cout<<"\n\t2.-PIEDRA,PAPEL,TIJERA."<<endl;
			cout<<"\n\t3.-ACERTIJOS FÁCILES."<<endl;
			cout<<"\n\t4.-SALIR."<<endl;
			cout<<"\nElija a qué juego quiere jugar:  ";
			cin>>respuesta;
			
			if((respuesta == 1)||(respuestaMenu.compare("CÁLCULO DACTILAR")==0)){
				respuestaMenu = "";
				cout<<"\n\t\t····COMIENZA EL JUEGO: CÁLCULO DACTILAR····"<<endl;
				tablet_text_CA(1);
				menu_CAs(1);
				minigame1();
				off_Mediapipe();
				menu_CAs(4);
				menu_CAs(5);
				cout<<"\n\n\t····FIN DEL JUEGO. GRACIAS POR JUGAR····"<<endl;
				cout<<"\n\n"<<endl;
				menu_ok = true;
			}else if((respuesta == 2)||(respuestaMenu.compare("PIEDRA, PAPEL, TIJERAS")==0)){
				respuestaMenu = "";
				cout<<"\n\t\t····COMIENZA EL JUEGO: PIEDRA, PAPEL, TIJERA····"<<endl;
				tablet_text_CA(2);
				menu_CAs(2);					
				minigame2();
				off_Mediapipe();
				menu_CAs(4);
				menu_CAs(5);
				cout<<"\n\n\t····FIN DEL JUEGO. GRACIAS POR JUGAR····"<<endl;
				cout<<"\n\n"<<endl;
				menu_ok = true;
			}else if((respuesta == 3)||(respuestaMenu.compare("ACERTIJOS")==0)){
				respuestaMenu = "";
				cout<<"\n\t\t····COMIENZA EL JUEGO: ACERTIJOS FÁCILES····"<<endl;
				tablet_text_CA(3);
				menu_CAs(3);						
				minigame3();
				off_Mediapipe();
				menu_CAs(4);
				menu_CAs(5);
				cout<<"\n\n\t····FIN DEL JUEGO. GRACIAS POR JUGAR····"<<endl;
				cout<<"\n\n"<<endl;
				menu_ok = true;
			}else if((respuesta == 4)||(respuestaMenu.compare("SALIR")==0)){
				respuestaMenu = "";
				cout<<"\nSALIR"<<endl;
				game_CA("Chao, espero que te lo hayas pasado bien");
				exit = true;
			}

			seconds_sleep.sleep(); 
		}

		
		if (exit){									//The minigames stops when the user requires it, implying a success.
			success = 0;
			ROS_INFO("HandGesture succesfully completed.");
			result_.end_minigame = success;
			//Set the action state to succeeded
			action_server_.setSucceeded(result_);

			char cmd[40];
			strcpy(cmd,"pkill -f hand_gesture_skill");
			system(cmd);
		}else if(action_server_.isPreemptRequested()){		//To check if the task has been preempted by the ActionLib Client.
			success = 1; 
			ROS_INFO("Preempt requested by the user");
			result_.end_minigame = success;
			action_server_.setPreempted(result_);
		}else if(success == -1){									//If something unexpected occurs during the loop (e.g. ROS going down)
			ROS_INFO("ERROR. ABORTING GOAL");
			result_.end_minigame = success;
			action_server_.setAborted(result_);
		}

	}


////////////////////////////////////////////////////////////////////////////////
////MINIGAMES				 												////
////////////////////////////////////////////////////////////////////////////////
	/**
     * @brief    Exercise or mini-game number 1. 
     *				This exercise consists of add and substraction arithmetic operations.
     *
     * @param                 
	 */
	void HandGestureSkill::minigame1(){
		//Minigame number 1: arithmetic operations.

		i = 0;	//To make a loop
		print = true;	//To print once the screen
		exit = false;	//To finish the minigame
		ros::Duration sleep_time2(4);
		
		
		on_Mediapipe();
		

		initial_time = ros::Time::now();

		while(!exit){ 

			//getHandGestureInfo();
				
			//hangeToStringHGInfo(1);


			if(i == 0){
				if (print){cout<<"\n 1+2= "<<endl;	game_CA("Uno más dos");	sleep_time2.sleep();}	//To print on screen just once.
				if(_gesto == 3){
					i = 1;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Correcto");
					sleep_time2.sleep();
					feedback_.questions_completed = i;
					action_server_.publishFeedback(feedback_);
		    	}else{
					i = 0;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("El resultado no es ese, inténtalo de nuevo");
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 3){
						num_incorrectAnswer = 0;
						game_CA("Te lo repito, cuánto es uno más dos");
						sleep_time2.sleep();
					}
		    	}
			}else if(i == 1){
				if (print){cout<<"\n 4-3= "<<endl;	game_CA("Cuatro menos tres");	sleep_time2.sleep();}
				if(_gesto == 1){
					i = 2;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Bien");
					sleep_time2.sleep();
					feedback_.questions_completed = i;
					action_server_.publishFeedback(feedback_);
		    	}else{
					i = 1;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("Incorrecto, prueba otra vez");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 3){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito, cuánto es cuatro menos tres");
						sleep_time2.sleep();
					}
		    	}
			}else if(i == 2){
				if (print){cout<<"\n 2+2= "<<endl;	game_CA("Dos más dos");	sleep_time2.sleep();}
				if(_gesto == 4){
					i = 3;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Sigue así");
					sleep_time2.sleep();
					feedback_.questions_completed = i;
					action_server_.publishFeedback(feedback_);
		    	}else{
					i = 2;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("El resultado no es ese, inténtalo de nuevo");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 3){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito, cuánto es dos más dos");
						sleep_time2.sleep();
					}
		    	}
			}else if(i == 3){
				if (print){cout<<"\n 5-5= "<<endl;	game_CA("Cinco menos cinco");	sleep_time2.sleep();}
				if(_gesto == 0){
					i = 4;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Muy bien");
					sleep_time2.sleep();
					feedback_.questions_completed = i;
					action_server_.publishFeedback(feedback_);
		    	}else{
					i = 3;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("Incorrecto, prueba otra vez");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 3){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito, cuánto es cinco menos cinco");
						sleep_time2.sleep();
					}
		    	}
			}else if(i == 4){
				if (print){cout<<"\n 1+1= "<<endl;	game_CA("Uno más uno");	sleep_time2.sleep();}
				if(_gesto == 2){
					i = 5;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Correcto");
					sleep_time2.sleep();
					feedback_.questions_completed = i;
					action_server_.publishFeedback(feedback_);
		    	}else{
					i = 4;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("El resultado no es ese, inténtalo de nuevo");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 3){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito, cuánto es uno más uno");
						sleep_time2.sleep();
					}
		    	}
			}else if(i == 5){
				if (print){cout<<"\n 7-2= "<<endl;	game_CA("Siete menos dos");	sleep_time2.sleep();}
				if(_gesto == 5){
					feedback_.questions_completed = i+1;
					action_server_.publishFeedback(feedback_);
					//i = 0;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Fantástico");
					sleep_time2.sleep();
					exit = true;
		    	}else{
					i = 5;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("Incorrecto, prueba otra vez");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 3){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito, cuánto es siete menos dos");
						sleep_time2.sleep();
					}
		    	}
			}else{
				cout<<"?¿"<<endl;
			}
		}
	}

	/**
     * @brief    Exercise or mini-game number 2. 
     *				This exercise consists of a kind of rock, paper, scissors game.
     *				The user must do the right gesture to win or lose depending on the requirement.
     *
     * @param                 
	 */
	void HandGestureSkill::minigame2(){
		//Minigame number 2: rock, paper, scisors.
		i = 0;	//To make a loop
		print = true;	//To print once the screen
		exit = false;	//To finish the minigame
		ros::Duration sleep_time2(4);
		
		on_Mediapipe();

		initial_time = ros::Time::now();

		while(!exit){

			//getHandGestureInfo();
	  		
			//changeToStringHGInfo(2);
		
			if(i == 0){
				if (print){cout<<"\n PAPEL (tienes que ganar)"<<endl;	game_CA("Yo saco papel, tienes que ganar");	sleep_time2.sleep();}
				if(_gesto == 2){
					i = 1;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Bien");
					sleep_time2.sleep();
					feedback_.questions_completed = i;
					action_server_.publishFeedback(feedback_);
		    	}else{
					i = 0;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("El resultado no es ese, inténtalo de nuevo");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 2){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito, yo saco papel, tienes que ganar");
						sleep_time2.sleep();
					}
		    	}
			}else if(i == 1){
				if (print){cout<<"\n TIJERA (tienes que perder)"<<endl;	game_CA("Yo saco tijeras, tienes que perder");	sleep_time2.sleep();}
				if(_gesto == 5){
					i = 2;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Sigue así");
					sleep_time2.sleep();
					feedback_.questions_completed = i;
					action_server_.publishFeedback(feedback_);
		    	}else{
					i = 1;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("Incorrecto, prueba otra vez");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 2){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito, yo saco tijeras, tienes que perder");
						sleep_time2.sleep();
					}
		    	}
			}else if(i == 2){
				if (print){cout<<"\n PAPEL (tienes que perder)"<<endl;	game_CA("Yo saco papel, tienes que perder");	sleep_time2.sleep();}
				if(_gesto == 0){
					i = 3;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Correcto");
					sleep_time2.sleep();
					feedback_.questions_completed = i;
					action_server_.publishFeedback(feedback_);
		    	}else{
					i = 2;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("El resultado no es ese, inténtalo de nuevo");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 2){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito, yo saco papel, tienes que perder");
						sleep_time2.sleep();
					}
		    	}
			}else if(i == 3){
				if (print){cout<<"\n PIEDRA (tienes que ganar)"<<endl;	game_CA("Yo saco piedra, tienes que ganar");	sleep_time2.sleep();}
				if(_gesto == 5){
					i = 4;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Bien");
					sleep_time2.sleep();
					feedback_.questions_completed = i;
					action_server_.publishFeedback(feedback_);
		    	}else{
					i = 3;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("Incorrecto, prueba otra vez");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 2){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito, yo saco piedra, tienes que ganar");
						sleep_time2.sleep();
					}
		    	}
			}else if(i == 4){
				if (print){cout<<"\n PIEDRA (tienes que perder) "<<endl;	game_CA("Yo saco piedra, tienes que perder");	sleep_time2.sleep();}
				if(_gesto == 2){
					i = 5;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Fantástico");
					sleep_time2.sleep();
					feedback_.questions_completed = i;
					action_server_.publishFeedback(feedback_);
		    	}else{
					i = 4;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("El resultado no es ese, inténtalo de nuevo");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 2){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito, yo saco piedra, tienes que perder");
						sleep_time2.sleep();
					}
		    	}
			}else if(i == 5){
				if (print){cout<<"\n TIJERA (tienes que ganar)"<<endl;	game_CA("Yo saco tijeras, tienes que ganar");	sleep_time2.sleep();}
				if(_gesto == 0){
					feedback_.questions_completed = i+1;
					action_server_.publishFeedback(feedback_);
					//i = 0;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Muy bien");
					sleep_time2.sleep();
					exit = true;
		    	}else{
					i = 5;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("Incorrecto, prueba otra vez");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 2){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito, yo saco tijeras, tienes que ganar");
						sleep_time2.sleep();
					}
		    	}
			}else{
				cout<<"?¿"<<endl;
			}
		}
	}

	/**
     * @brief    Exercise or mini-game number 3. 
     *				This exercise consists of short questions or quiz that the user must answer.
     *
     * @param                 
	 */
	void HandGestureSkill::minigame3(){
		//Minigame number 3: easy questions.

		i = 0;	//To make a loop
		print = true;	//To print once the screen
		exit = false;	//To finish the minigame
		ros::Duration sleep_time4(4), sleep_time2(2);

		on_Mediapipe();
		
		initial_time = ros::Time::now();

		while(!exit){

			//getHandGestureInfo();	
				
			//changeToStringHGInfo(3);

			if(i == 0){
				if (print){
					cout<<"\n\n··············································································"<<endl;
					cout<<"\n En esta serie de números del 0 al 5, indica el número que falta: "<<endl;
					game_CA("En esta serie de números del cero al cinco, indica el número que falta");
					sleep_time2.sleep();
					cout<<"\n 0 - 1 - 2 - 4 - 5 "<<endl;
					game_CA("Cero, uno, dos, cuatro, cinco");
					sleep_time4.sleep();
				}
				if(_gesto == 3){
					i = 1;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Correcto");
					sleep_time2.sleep();
					feedback_.questions_completed = i;
					action_server_.publishFeedback(feedback_);
		    	}else{
					//cout<<"\nError! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
					i = 0;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("El resultado no es ese, inténtalo de nuevo");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 3){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito");
						sleep_time2.sleep();
						game_CA("En esta serie de números del cero al cinco, indica el número que falta");
						sleep_time2.sleep();
						game_CA("Cero, uno, dos, cuatro, cinco");
						sleep_time4.sleep();
					}
		    	}
			}else if(i == 1){
				if (print){
					cout<<"\n\n··············································································"<<endl;
					cout<<"\n Un pan, otro pan, pan y medio y medio pan. "<<endl;
					game_CA("Un pan, otro pan, pan y medio y medio pan");
					sleep_time2.sleep();
					cout<<"\n ¿Cuántos panes son? "<<endl;
					game_CA("Cuántos panes son");
					sleep_time4.sleep();
				}
				if(_gesto == 4){
					i = 2;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Bien");
					sleep_time2.sleep();
					feedback_.questions_completed = i;
					action_server_.publishFeedback(feedback_);
		    	}else{
					//cout<<"\nError! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
					i = 1;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("Incorrecto, prueba otra vez");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 3){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito");
						sleep_time2.sleep();
						game_CA("Un pan, otro pan, pan y medio y medio pan");
						sleep_time2.sleep();
						game_CA("Cuántos panes son");
						sleep_time4.sleep();
					}
		    	}
			}else if(i == 2){
				if (print){
					cout<<"\n\n··············································································"<<endl;
					cout<<"\n Cuando te pones a contar, por mí tienes que empezar. "<<endl;
					game_CA("Cuando te pones a contar, por mí tienes que empezar");
					sleep_time2.sleep();
					cout<<"\n ¿Qué número soy? "<<endl;
					game_CA("Qué número soy");
					sleep_time4.sleep();
				}
				if(_gesto == 1){
					i = 3;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Sigue así");
					sleep_time2.sleep();
					feedback_.questions_completed = i;
					action_server_.publishFeedback(feedback_);
		    	}else{
					//cout<<"\nError! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
					i = 2;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("El resultado no es ese, inténtalo de nuevo");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 3){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito");
						sleep_time2.sleep();
						game_CA("Cuando te pones a contar, por mí tienes que empezar");
						sleep_time2.sleep();
						game_CA("Qué número soy");
						sleep_time4.sleep();
					}
		    	}
			}else if(i == 3){
				if (print){
					cout<<"\n\n··············································································"<<endl;
					cout<<"\n - Piensa un número. "<<endl;
					game_CA("Piensa un número");
					sleep_time4.sleep();
					cout<<"\n - Multiplica ese número por dos. "<<endl;
					game_CA("Multiplica ese número por dos");
					sleep_time4.sleep();
					cout<<"\n - Al resultado anterior, súmale seis. "<<endl;
					game_CA("Al resultado anterior, súmale seis");
					sleep_time4.sleep();
					cout<<"\n - Ahora divide el resultado de antes entre dos. "<<endl;
					game_CA("Ahora divide el resultado de antes entre dos");
					sleep_time4.sleep();
					cout<<"\n - Por último, resta el número que habías pensado. "<<endl;
					game_CA("Por último, resta el número que habías pensado");
					sleep_time4.sleep();
					cout<<"\n ¿Cuál es el resultado? "<<endl;
					game_CA("Cuál es el resultado");
					sleep_time4.sleep();
				}
				if(_gesto == 3){
					i = 4;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Estupendo");
					sleep_time2.sleep();
					feedback_.questions_completed = i;
					action_server_.publishFeedback(feedback_);
		    	}else{
					//cout<<"\nError! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
					i = 3;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("Incorrecto, prueba otra vez");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 3){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito");
						sleep_time2.sleep();
						game_CA("Piensa un número");
						sleep_time4.sleep();
						game_CA("Multiplica ese número por dos");
						sleep_time4.sleep();
						game_CA("Al resultado anterior, súmale seis");
						sleep_time4.sleep();
						game_CA("Ahora divide el resultado de antes entre dos");
						sleep_time4.sleep();
						game_CA("Por último, resta el número que habías pensado");
						sleep_time4.sleep();
						game_CA("Cuál es el resultado");
						sleep_time4.sleep();
					}
		    	}
			}else if(i == 4){
				if (print){
					cout<<"\n\n··············································································"<<endl;
					cout<<"\n En esta serie de números del 0 al 5, indica el número que falta: "<<endl;
					game_CA("En esta serie de números del cero al cinco, indica el número que falta");
					sleep_time2.sleep();
					cout<<"\n 3 - 1 - 4 - 0 - 2 "<<endl;
					game_CA("Tres, uno, cuatro, cero, dos");
					sleep_time4.sleep();
				}
				if(_gesto == 5){
					i = 5;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Correcto");
					sleep_time2.sleep();
					feedback_.questions_completed = i;
					action_server_.publishFeedback(feedback_);
		    	}else{
					//cout<<"\nError! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
					i = 4;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("El resultado no es ese, inténtalo de nuevo");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 3){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito");
						sleep_time2.sleep();
						game_CA("En esta serie de números del cero al cinco, indica el número que falta");
						sleep_time2.sleep();
						game_CA("Tres, uno, cuatro, cero, dos");
						sleep_time4.sleep();
					}
		    	}
			}else if(i == 5){
				if (print){
					cout<<"\n\n··············································································"<<endl;
					cout<<"\n Soy más de uno sin llegar a tres y llego a cuatro cuando dos me des. "<<endl;
					game_CA("Soy más de uno sin llegar a tres y llego a cuatro cuando dos me des");
					sleep_time2.sleep();
					cout<<"\n ¿Qué número soy? "<<endl;
					game_CA("Qué número soy");
					sleep_time4.sleep();
				}
				if(_gesto == 2){
					feedback_.questions_completed = i+1;
					action_server_.publishFeedback(feedback_);
					//i = 0;
					print = true;
					num_incorrectAnswer = 0;
					initial_time = ros::Time::now();
					cout<<"\nCorrecto! \tEl resultado es: "<<_gestoStr<<endl;
					game_CA("Muy bien");
					sleep_time2.sleep();
					exit = true;
		    	}else{
					//cout<<"\nError! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
					i = 5;
					print = false;

					if(((ros::Time::now()-initial_time).toNSec() * 1e-6 >= 15000.0) && no_answerOk){
						cout<<"Error! \tEl resultado no es ese. Inténtalo de nuevo."<<endl;
						game_CA("Incorrecto, prueba otra vez");	
						sleep_time2.sleep();

						num_incorrectAnswer++;
						no_answerOk = false;
						answer_time = ros::Time::now();
					}

					if(((ros::Time::now()-answer_time).toNSec() * 1e-6 >= 8000.0) && !no_answerOk){
						no_answerOk = true;
					}

					if(num_incorrectAnswer == 3){ 
						num_incorrectAnswer = 0;
						game_CA("Te lo repito");
						sleep_time2.sleep();
						game_CA("Soy más de uno sin llegar a tres y llego a cuatro cuando dos me des");
						sleep_time2.sleep();
						game_CA("Qué número soy");
						sleep_time4.sleep();
					}
		    	}
			}else{
				cout<<"?¿"<<endl;
			}
		}
	}

	/**
     * @brief    Function to change the variable of type 'int' to a variable of type 'string'.
     *				Depending of the exercise choosed, the number will correspond to a different name.
     *
     * @param    gameNum
     *						This variable is the number received from the hand detector.
     *						The number gives us the type of gesture that the user is showing to the cam.             
	 */
			/*
				void HandGestureSkill::changeToStringHGInfo(int gameNum){
					//To give the corresponding name to the gesture detected.
					if(gameNum==1 || gameNum==3){
						//Pasar a string el gesto.
						switch (_gesto){
							case 0:
								_gestoStr = "CERO";
								break;
							case 1:
								_gestoStr = "UNO";
								break;
							case 2:
								_gestoStr = "DOS";
								break;
							case 3:
								_gestoStr = "TRES";
								break;
							case 4:
								_gestoStr = "CUATRO";
								break;
							case 5:
								_gestoStr = "CINCO";
								break;
							default:
								break;
						}
					}else if(gameNum==2){
						//Pasar a string el gesto.
						switch (_gesto){
							case 0:
								_gestoStr = "PIEDRA";
								break;
							case 2:
								_gestoStr = "TIJERA";
								break;
							case 5:
								_gestoStr = "PAPEL";
								break;
							default:
								break;
						}
					}

				}
			*/
////////////////////////////////////////////////////////////////////////////////
////MEDIAPIPE CONTROL		 												////
////////////////////////////////////////////////////////////////////////////////
	/**
     * @brief    Function to turn on the hand gesture detector (mediapipe).
     *
     *
     * @param 
     *  
	 */
	void HandGestureSkill::on_Mediapipe(){
		//To initialize mediapipe (Hand gesture detector)
		std_msgs::Empty msg;
		mediapipeON_pub_.publish(msg);
	}
	/**
     * @brief    Function to turn off the hand gesture detector (mediapipe).
     *
     *
     * @param 
     * 
	 */
	void HandGestureSkill::off_Mediapipe(){
		//To close mediapipe (Hand gesture detector)
		std_msgs::Empty msg;
		mediapipeOFF_pub_.publish(msg);
	}

////////////////////////////////////////////////////////////////////////////////
////GET GESTURE	INFO		 												////
////////////////////////////////////////////////////////////////////////////////


	/**
     * @brief    Function to comunicate this ROS node with the hand gesture detector of Mediapipe.
     *				With this function we obtain the type of gesture that the user is doing. 
     *				It is represented with a number from 0 to 5.
     *
     * @param                
	 */
	void HandGestureSkill::getHandGestureInfo(const hand_gesture_msgs::HandGesture::ConstPtr& hgInfo){
		_gesto = hgInfo->num_fingers;
  		_gestoStr = hgInfo->gesture;
	}


////////////////////////////////////////////////////////////////////////////////
////COMMUNICATION USING CA		 											////
////////////////////////////////////////////////////////////////////////////////
	
	/**
     * @brief    Function to receive the answer from the HRI.
     *
     *
     * @param    caResult
     *						
	 */
	void HandGestureSkill::hriCallback(const interaction_msgs::CaResult::ConstPtr& caResult){

		//respuestaMenu = caResult->values[3].value;
		//cout<<"RESPUESTA HRI: "<<respuestaMenu<<endl;
		
		for (int w= 0; w < caResult->values.size(); w++){
			if (caResult->values[w].key == "answer_value"){ 
				respuestaMenu = caResult->values[w].value;
			}
			//cout<<"RESPUESTA "<<w<<": "<<caResult->values[w]<<endl;
		}
		//cout<<"RESPUESTA HRI: "<<respuestaMenu<<endl;
	}

	/**
     * @brief    Function to create CA.
     *
     *
     * @param    caNum 
     *						This variable is a number that indicates the CA to be sent.
	 */
	void HandGestureSkill::menu_CAs(int caNum){
		ros::Duration sec_sleep(0.2);
		interaction_msgs::CA myCA;
		common_msgs::KeyValuePair myKVP;
		//double tem =ros::Time::now().toNSec() * 1e-6;
		//myCA.ca_name = boost::lexical_cast<std::string>(tem);

		myCA.ca_name = "123456789";
		myCA.type = "robot_giving_info";
		myCA.emitter = "hand_gesture_skill";
		myCA.priority = 1;
		myCA.duration = 0;

		if(caNum==0){

			myKVP.key = "etts_text";
			myKVP.value = "Vamos a jugar";

		}else if(caNum==1){

			myKVP.key = "etts_text";
			myKVP.value = "Minijuego uno, sumas y restas";

		}else if(caNum==2){

			myKVP.key = "etts_text";
			myKVP.value = "Minijuego dos, piedra, papel, tijeras";

		}else if(caNum==3){

			myKVP.key = "etts_text";
			myKVP.value = "Minijuego tres, acertijos";

		}else if(caNum==4){

			myKVP.key = "etts_text";
			myKVP.value = "Estupendoo, bien hecho";

		}else if(caNum==5){

			myKVP.key = "gesture";
			myKVP.value = "alz_express_hapiness";

		}

		myCA.values.push_back(myKVP);
		sec_sleep.sleep();
		ca_pub_.publish(myCA);
	}

	/**
     * @brief    Function to create menu in the tablet.
     *
     *
     * @param         
	 */
	void HandGestureSkill::tablet_menu_CA(){
		ros::Duration sec_sleep(0.2);
		interaction_msgs::CA myCA;
		common_msgs::KeyValuePair myKVP;
		//double tem =ros::Time::now().toNSec() * 1e-6;
		//myCA.ca_name = boost::lexical_cast<std::string>(tem);

		myCA.ca_name = "123456789";
		myCA.type = "robot_asking_for_info";
		myCA.emitter = "hand_gesture_skill";
		myCA.priority = 1;
		myCA.duration = 0;
		myKVP.key = "menu_type";
		myKVP.value = "text";
		myCA.values.push_back(myKVP);
		myKVP.key = "answer_time";
		myKVP.value = "10";
		myCA.values.push_back(myKVP);
		myKVP.key = "answer_attemps";
		myKVP.value = "10";
		myCA.values.push_back(myKVP);
		myKVP.key = "answer_type";
		myKVP.value = "tablet_menu";
		myCA.values.push_back(myKVP);
		myKVP.key = "answer_id";
		myKVP.value = "tablet_answer";
		myCA.values.push_back(myKVP);
		myKVP.key = "menu_value";
		myKVP.value = "CÁLCULO DACTILAR|PIEDRA, PAPEL, TIJERAS|ACERTIJOS|SALIR";
		myCA.values.push_back(myKVP);
		sec_sleep.sleep();
		ca_pub_.publish(myCA);

	}

	/**
     * @brief    Function to show text in the tablet.
     *
     *
     * @param    caGameNum 
     *						This variable is a number that indicates what minigame has been chosen.
	 */
	void HandGestureSkill::tablet_text_CA(int caGameNum){
		ros::Duration sec_sleep(0.2);
		interaction_msgs::CA myCA;
		common_msgs::KeyValuePair myKVP;
		//double tem =ros::Time::now().toNSec() * 1e-6;
		//myCA.ca_name = boost::lexical_cast<std::string>(tem);
		myCA.ca_name = "123456789";
		myCA.type = "robot_giving_info";
		myCA.emitter = "hand_gesture_skill";
		myCA.priority = 1;
		myCA.duration = 0;
		myKVP.key = "tablet_text";
		
		if(caGameNum==1){
			myKVP.value = "En este minijuego tendrás que hacer sumas y restas, e indicar el resultado con los dedos de tu mano.";
		}else if(caGameNum==2){
			myKVP.value = "Si no conoces el clásico juego de piedra papel tijeras, este tiene tres normas básicas: el papel gana a la piedra, la piedra gana a las tijeras y las tijeras ganan al papel. En este minijuego tendrás que mostrar a la cámara el gesto que corresponda según el enunciado planteado. Por ejemplo, si yo digo papel tienes que ganar, tú deberás hacer el gesto de tijeras.";
		}else if(caGameNum==3){
			myKVP.value = "En este minijuego tendrás que resolver unos acertijos numéricos. Para responder tendrás que indicar la respuesta con los dedos de tu mano.";
		}
		myCA.values.push_back(myKVP);
		sec_sleep.sleep();
		ca_pub_.publish(myCA);

	}

	/**
     * @brief    Function to create CA for the minigames.
     *
     *
     * @param    caName
     *						This variable is a number that indicates the CA to be sent.
	 */
	void HandGestureSkill::game_CA(string caName){
		ros::Duration sec_sleep(0.2);
		interaction_msgs::CA myCA;
		common_msgs::KeyValuePair myKVP;
		//double tem =ros::Time::now().toNSec() * 1e-6;
		//myCA.ca_name = boost::lexical_cast<std::string>(tem);

		myCA.ca_name = "123456789";
		myCA.type = "robot_giving_info";
		myCA.emitter = "hand_gesture_skill";
		myCA.priority = 1;
		myCA.duration = 0;
		myKVP.key = "etts_text";
		myKVP.value = caName;
		myCA.values.push_back(myKVP);
		sec_sleep.sleep();
		ca_pub_.publish(myCA);
	}

//==================================================