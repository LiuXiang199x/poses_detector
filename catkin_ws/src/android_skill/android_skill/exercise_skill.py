#!/usr/bin/env python
# -*- coding: utf-8 -*-

__author__ = "Haobing Zhong"
__copyright__ = "Social Robots Group. Robotics Lab. University Carlos III of Madrid"
__credits__ = ["Haobing Zhong"]
__license__ = "LEUC3M v1.0"
__version__ = "0.0.0"
__maintainer__ = "Haobing Zhong"
__email__ = "100414522@alumnos.uc3m.es"
__status__ = "Development"

# Import libs
import sys
import os
import rospkg
import rospy
import roslib
import android_skill.msg
import actionlib

import json
import time

from random import choice, shuffle, randint

from skill.skill import Skill, ActionlibException, CONDITIONAL
from std_msgs.msg import String, Bool

from interaction_utils.key_value_pairs import to_dict
from interaction_msgs.msg import CA, CaResult
from interaction_utils.ca_functions import *

from ros_openpose.msg import Distance2user
from ros_openpose.msg import CompThresh
from ros_openpose.msg import ExerciseInfo
from ros_openpose.msg import Numperson
from threading import Timer

from std_msgs.msg import String
import numpy as np
import cv2 
import os
import matplotlib.pyplot as plt
import matplotlib.image as mping
import pandas as pdc
import time
import random

rospack = rospkg.RosPack()
pkg_name = 'android_skill'                
skill_name = 'android_skill' # Name of the package
app_name = 'android_app_spotify'
RATE = 0.2 # Sleep rate between loops
robot_name = "alz6"


class ExerciseSkill(Skill):

    """
    Quiz skill class.
    """

    # create messages that are used to publish feedback/result
    _feedback = android_skill.msg.AndroidFeedback()
    _result = android_skill.msg.AndroidResult()

    def __init__(self):
        """
        Init method.
        """

        # init the skill
        Skill.__init__(self, pkg_name, CONDITIONAL)

        # Attributes
        self._as = None 
        self.__app_state = None

        self.__active_cas = list()
        self.__waiting_answer = False
        self.__distance_timer = None
        self.__firstcheck_timer = None
        self.__secondcheck_timer = None
        self.__thirdcheck_timer = None
        self.__fourthcheck_timer = None

        self.__count_frame0 = 0
        self.__count_frame1 = 0
        self.__count_frame23 = 0
        self.__gesture_state = 0
        self._tmp_state = []
        self._tmp_pose = None
        self._num_person = 0


        self._check_distance = False
        self._check_gesture = False
        self._time_counter = 0
        self._gesture_frame = 0
        self._gesture_index = 0
        self._index_gesture = 0
        self._gesture_completed = 0


        self._ca_answer = ""
        self._video_path = ""   # Current video's url

        self._ca_names = []
        self._emitter = skill_name.split("_")[0] + "_ca" # Create CA emitter

        self._gesture_name = ["Estirar los musculos del hombro hacia arriba", "Estirar los musculos del hombro hacia abajo", "Estirar los musculos del pecho", "Levantamiento de los brazos arriba de la cabeza", "Levantamiento frontal de los brazos", "Levantamiento lateral de los brazos", "Flexion de los brazos", "Estiramientos de la muneca", "Estirar el brazo izquierdo", "Estirar el brazo derecho", "Estirar los brazos de adelante hacia la derecha", "Estirar los brazos de adelante hacia la izquierda", "Levantar los brazos arriba de la cabeza y estirar hacia la derecha", "Levantar los brazos arriba de la cabeza y estirar hacia la izquierda", "Ajustar la respiracion a la version simple", "Ajustar la respiracion a la version avanzada"]
        self._gesture_name_user = ""
        self._threshold_base_mean = [[0.14510037246899638, 0.15336231522453376, 0.16442091574352789, 0.1630041702685293], 
                    [0.1410037246899638, 0.15336231522453376, 0.15442091574352789, 0.16745421585026611], 
                    [0.14510037246899638, 0.15336231522453376, 0.16442091574352789, 0.15224336771100576], 
                    [0.14510037246899638, 0.15442091574352789, 0.16735880322803049, 0.16328875027603507], 
                    [0.14510037246899638, 0.1522496378587482, 0.1642496378587482, 0.15824336771100576],

                    [0.14810037246899638, 0.15652091574352789, 0.15735880322803049, 0.16442091574352789], 
                    [0.14810037246899638, 0.15742091574352789, 0.15235880322803049, 0.16328875027603507], 
                    [0.14810037246899638, 0.15336231522453376, 0.16442091574352789, 0.15328875027603507], 
                    [0.14810037246899638, 0.15442091574352789, 0.16735880322803049, 0.16328875027603507], 
                    [0.14810037246899638, 0.15442091574352789, 0.16735880322803049, 0.16328875027603507], 

                    [0.14810037246899638, 0.15442091574352789, 0.16735880322803049, 0.15828875027603507], 
                    [0.14810037246899638, 0.15442091574352789, 0.1635880322803049, 0.15828875027603507], 
                    [0.14810037246899638, 0.15336231522453376, 0.15442091574352789, 0.16228875027603507], 
                    [0.14810037246899638, 0.15336231522453376, 0.16442091574352789, 0.16928875027603507], 
                    [0.14810037246899638, 0.15442091574352789, 0.16735880322803049, 0.15928875027603507],
     
                    [0.14810037246899638, 0.15442091574352789, 0.16735880322803049, 0.16328875027603507]]

        self._words_intro = "Hola, lo que has visto es un sistema de estimulación física.Antes de empezar, prepara una silla y dos objetos pesados que puedas sostener. Manténgalo a unos 2 metros de la cámara.A continuación les mostrare un vídeo de la demostración de acción." 
        self._failed_words = "Hiciste un gran trabajo, pero la acción no se completó."
        self._success_words = ["Buen comienzo!", "Muy bien, sígue así!", "Muy bien, sígue así!", "Felicitaciones por completar esta acción!"]
        self._tips_words = [["Por favor, ponga sus manos en ambos lados para comenzar.", "Levante lentamente las manos de ambos lados.", "Abre tus manos, por favor levanta un poquito.", "Intente doblar el codo 90 grados hacia arriba."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Levante lentamente las manos de ambos lados.", "Abre tus manos, por favor levanta un poquito.", "Intente doblar el codo hacia abajo 90 grados."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Levante lentamente las manos de ambos lados.", "Abre tus manos, por favor levanta un poquito.", "Intenta estirar los brazos hacia atrás."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Abre tus manos, por favor levanta un poquito.", "Trate de doblar los codos desde ámbos lados.", "Vamos! Levanta un poco tu brazo."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Por favor levante las manos desde el frente.", "Intenta subir un poco más el codo.", "¡Vamos! Levanta un poco tu brazo."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Levante lentamente las manos de ambos lados.", "Levanta los brazos lentamente.", "Abre tus manos, por favor levanta un poquito."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Doble lentamente las manos hacia adelante.", "Levanta los brazos lentamente.", "Por favor levanta un poquito."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Levante lentamente las manos de ambos lados.", "Abre tus manos, por favor levanta un poquito.", "Junta tus manos y presiona hacia abajo."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Por favor levante las manos desde el frente.", "¡Vamos! Levanta un poco tu brazo.", "Gira tu mano izquierda hacia la derecha y fíjala con tu mano derecha."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Por favor levante las manos desde el frente.", "¡Vamos! Levanta un poco tu brazo.", "Gira tu mano derecha hacia la derecha y fíjala con tu mano izquierda."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Por favor levante las manos desde el frente.", "¡Vamos! Levanta un poco tu brazo.", "Estirar los brazos de adelante hacia la derecha."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Por favor levante las manos desde el frente.", "¡Vamos! Levanta un poco tu brazo.", "Estirar los brazos de adelante hacia la izquierda."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Levante lentamente las manos de ambos lados.", "Abre tus manos, por favor levanta un poquito.", "Estirar los brazos hacia la derecha."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Levante lentamente las manos de ambos lados.", "Abre tus manos, por favor levanta un poquito.", "Estirar los brazos hacia la izquierda."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Apriete las manos y déjalas caer de forma natural.", "Por favor levante las manos desde el frente.", "¡Vamos! Levanta un poco tu brazo."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Apriete las manos y déjalas caer de forma natural.", "¡Vamos! Levanta un poco tu brazo.", "Empuja tus manos hacia adelante."]]
        
        self._gesture2user = random.sample(self._gesture_name, 5)

        self.app_status = None
        self.engagement = True
        self.percentage_completed = 0

        #self.create_msg_srv()

    def create_msg_srv(self):
        """
        Defines publishers, subscribers, services and actions
        """

        # Publishers to handle CAs
        self.__pub_ca = rospy.Publisher(robot_name+"/hri_manager/ca_activations", CA, queue_size=1)
        self.__deactivate_ca = rospy.Publisher(robot_name+"/hri_manager/ca_deactivations", String, queue_size=1)
        
        ## ROS ServiceClient: exercise_name & database
        self.exerciseinfo_pub= rospy.Publisher("exercise_info", ExerciseInfo, queue_size=1)
        rospy.Subscriber("Num_person", Numperson, self.numpersonCallback)

        ## ROS Subscriber: receive the distance
        rospy.Subscriber("distanceRobot_User", Distance2user, self.distanceCallback)

        ## ROS Subscriber: receive the result of gesture
        rospy.Subscriber("compare_gesture", CompThresh, self.GesResultCallback)

        ## ROS Subscriber: CA Result
        #self.sub_ca_result = rospy.Subscriber(robot_name+"/ca_result", CaResult, self.ca_result_callback) 

        # Ca response subscriber
        self.__ca_sub = rospy.Subscriber(robot_name+"/hri_manager/response", CaResult, self.__ca_cb)    
        
        # Skill conditional action definition
        if self._as is None:
            self._as = actionlib.SimpleActionServer(skill_name,
                                                    android_skill.msg.AndroidAction,
                                                    execute_cb=self.execute_cb,
                                                    auto_start=False)
            # Start the action server
            self._as.start()

        rospy.loginfo("[START EXERCISE SKILL]")

    def numpersonCallback(self, data):
        self._num_person = data.data

    def distanceCallback(self, distance):
        #ca_msg1 = makeCA_info(etts_text="Acércate a la cámara por favor.", emitter=self._emitter)
        #ca_msg2 = makeCA_info(etts_text="Manténgase alejado de la cámara por favor.", emitter=self._emitter)
        #ca_msg3 = makeCA_info(etts_text="La detección de distancia de usuarios es perfecta, puedes iniciar el tutorial.", emitter=self._emitter)
        if self._check_distance:
                
            if distance.distance > 3.2:
                rospy.loginfo("Acércate a la cámara por favor.")
                self.__app_state = "distance_user_so_far"    

            if distance.distance < 2.7:
                rospy.loginfo("Manténgase alejado de la cámara por favor.")
                self.__app_state = "distance_user_so_close" 

            if distance.distance > 2.7 and distance.distance < 3.2:
                rospy.loginfo("La detección de distancia de usuarios es perfecta, puedes iniciar el tutorial.")
                self._check_distance = False
                self.__app_state = "distance_user_correct"
   

    def shutdown_msg_srv(self):
        """
        Deletes publishers, servers, services ans actions

        """

        # Set a log info
        rospy.loginfo("Exiting %s...", pkg_name)

        # Set status of skill
        self.app_status = "stop_ok"
        self.__build_feedback()
        
        # Shutting down subs
        self.__ca_sub.unregister()
        self.__app_listener.unregister()

        # Remove all active expressions
        self.__deactivate_cas()

    def __deactivate_cas(self):
        """
        Deactivate all expressions in list
        """

        rospy.loginfo("Deactivating CA list %s", str(self.__active_cas))
        # Deactivate all active expressions
        for ca in self.__active_cas:
            self.__deactivate_ca.publish(ca)
            self.__active_cas.remove(ca)
        
        self.__active_cas = list()

    def __ca_cb(self, ca_result):
        """
        Receives the execution results for the CAs
        @ input ca_result CaResult msg: result of the interaction
        """
        response = ("New response CA:\n" 
            + " ca_result.emitter: " + ca_result.emitter + "\n" 
            + " ca_result.ca_name: " + ca_result.ca_name + "\n"
            + " ca_result.result: " + ca_result.result + "\n")
        rospy.loginfo(response)

        values = to_dict(ca_result.values)

        rospy.loginfo(values)


        if ca_result.emitter == pkg_name and ca_result.ca_name in self.__active_cas and self.__waiting_answer:
            rospy.loginfo("New response received from HRI manager...")

            # Get the user response in a dict (tablet for example)
            if bool(values):
                ans = values['answer_value'].lower()
                rospy.loginfo("Received response: " + ans)
                if ca_result.result == 'succeeded':
                    if ca_result.ca_name == self.__active_cas[-1]:
                        rospy.loginfo(" state_transition [next state]")
                        #self.menu_transition(ans)
                        if self.__app_state == "wait_repeat_exercise_answer":
                            if ans == "sí":
                                self.__app_state = "check_gesture"
                            elif ans == "no":
                                self.__app_state = "next_exercise_ask"

                        if self.__app_state == "wait_next_exercise_answer":
                            if ans == "sí":
                                self.__app_state = "next_exercise"
                            elif ans == "no":
                                self.__app_state = "tutorial_finish"


            # Robot has said any sentence/question
            else:
                rospy.loginfo("Robot has said any sentence/question")
                if ca_result.result == 'succeeded':
                    if ca_result.ca_name == self.__active_cas[-1]:
                        rospy.loginfo(" state_transition [next state]")
                        self.state_transition()

            # Remove CA
            self.__active_cas.remove(ca_result.ca_name)
            self.__waiting_answer = False

    def state_transition(self):
        if self._num_person == 0 and len(self._tmp_state) <= 2:
            self.__app_state = "nobody_detected"
            self._tmp_state.append(self.__app_state)

        elif self._num_person == 0 and len(self._tmp_state) > 2 and not self.__skill_finished:
            self.__app_state = "fin_tutorial"

        elif self.__app_state == "waiting_welcome":
            self.__app_state = "starting_distance_timer"

        elif self.__app_state == "robot_distance_regreat":
            self.__app_state = "check_gesture"

        elif self.__app_state == "waiting_g_correct_etts":
            self.__app_state = "repeat_exercise_ask"

        elif self.__app_state == "waiting_g_incorrect_etts":
            self.__app_state = "repeat_exercise_ask"

        elif self.__app_state == "waiting_instruction_user_close":
            self.__app_state = "starting_distance_timer"

        elif self.__app_state == "waiting_instruction_user_far":
            self.__app_state = "starting_distance_timer"

        elif self.__app_state == "show_gesture":
            self.__app_state = "starting_show_gesture"

        elif self.__app_state == "finish_show_image":
            self.__app_state = "detect_gesture"

        elif self.__app_state == "detecting_gestrue":
            self.__app_state = "first_check"

        elif self.__app_state == "start_second_check":
            self.__app_state = "second_check"

        elif self.__app_state == "start_third_check":
            self.__app_state = "third_check"

        elif self.__app_state == "start_fourth_check":
            self.__app_state = "fourth_check"

        elif self.__app_state == "continue_exercise":
            self.__app_state = "check_gesture"

        elif self.__app_state == "wait_tutorial_finish":
            self.__app_state = "fin_tutorial"


    def resume_exec(self):
        """
        Function activated after receiving a resume from skill handler
        """

        rospy.loginfo("Skill %s resumed", pkg_name)
        self.app_status = 'resume_ok'

        # publish the feedback
        self.__build_feedback()


    def execute_cb(self, goal):
        """
        Callback to execute the action of dancing. 

        @param goal: message with the content.
        """
        self.__skill_finished = False
        self.__waiting_answer = False
        self.__app_menu = None
        # Init variables
        self._result.skill_result = android_skill.msg.AndroidResult().FAIL # Define skill result = FAIL

        if self._status == self.RUNNING:
            # Set a log info
            #rospy.loginfo("Entering %s... and open app", pkg_name)
            #self.__pub_to_app_tablet.publish("open_app/org.ros.android." + app_name)
            # Init variables
            # Set status of skill and send feedback
            self.app_status = "start_ok"
            self.__app_state = "starting_app_welcome"
            self.percentage_completed = 0
            self.engagement = True
            self.__build_feedback()

            # Main program of the skill
            try:

                # While the skill is not finished, execute loop maintaining active the skill
                while not self.__skill_finished:
                    # Check if there is a cancel request
                    if self._as.is_preempt_requested():
                        raise ActionlibException

                    self._gesture_name_user = self._gesture2user[self._index_gesture]
                    self._gesture_index = self._gesture_name.index(self._gesture_name_user)
                    Msg_exercise = ExerciseInfo()
                    Msg_exercise.name = self._gesture_name_user
                    Msg_exercise.data = self._threshold_base_mean[self._gesture_index]
                    self.exerciseinfo_pub.publish(Msg_exercise)

                    if self.app_status in ['start_ok', 'resume_ok']:
                        self.app_transitions_state()
                        
                    if self._index_gesture == 4:
                        self.__app_state = "tutorial_finish"
                    # Sleep
                    rospy.sleep(RATE)

                

                if self.app_status not in ["completed_fail", "stop_ok"]:
                    # Deactivate all active expressions
                    self.__deactivate_cas()
                    # Update feedback vars and send it
                    self._result.skill_result = android_skill.msg.AndroidResult().SUCCESS
                    self.app_status = "completed_ok"
                    self.percentage_completed = 100
                    self.__build_feedback()

            except ActionlibException:
                # Deactivate all active expressions
                self.__deactivate_cas()
                # Activate last sentence
                #current_ca = self.__select_sentence("end_game")
                #self.__send_sentence(current_ca)
                # Skill cancelled or prempted
                rospy.logwarn('[%s] Preempted or cancelled' % pkg_name)
                # Set flags
                self.app_status = 'cancel_ok'
                self._result.skill_result = android_skill.msg.AndroidResult().FAIL 

                # publish the feedback
                self.__build_feedback()

        else:
            rospy.logwarn("[%s] Cannot send a goal when the skill is stopped" % pkg_name)
            # Deactivate all active expressions
            self.__deactivate_cas()
            # ERROR
            self._result.skill_result = android_skill.msg.AndroidResult().ERROR
            # publish the feedback
            self.app_status = "start_fail"
            self.__build_feedback()

        rospy.loginfo("Publishing result and ending skill...")
        # publish the result
        if self._result.skill_result == android_skill.msg.AndroidResult().SUCCESS:
            # SUCCESS
            self._as.set_succeeded(self._result)
        elif self._result.skill_result == android_skill.msg.AndroidResult().FAIL:
            # FAIL
            self._as.set_preempted(self._result)
        elif self._result.skill_result == android_skill.msg.AndroidResult().ERROR:
            # ERROR
            self._as.set_aborted(self._result)

    def pause_exec(self):
        """
        Function activated after receiving a pause from skill handler
        """

        rospy.loginfo("Skill %s paused", pkg_name)
        self.app_status = 'pause_ok'

        # publish the feedback
        self.__build_feedback()

        # Remove all active expressions
        self.__deactivate_cas()

    def __build_feedback(self):
        """
        Method which builds and published the feedback of the skill
        """

        # For every field of feedback, set class same value
        for feed in dir(self._feedback):
            if feed in vars(self):
                setattr(self._feedback, feed, getattr(self, feed))
        # publish the feedback
        self._as.publish_feedback(self._feedback)

    def timerCallback(self, event):
        rospy.loginfo("timer finished...checking user distance")
        self._check_distance = False
        self.__distance_timer.shutdown()
        self.__distance_timer = None
        if self.__app_state  == "distance_user_so_far":
            self.__app_state = "say_user_close"

        elif self.__app_state == "distance_user_so_close":
            self.__app_state = "say_user_far"

        elif self.__app_state == "distance_user_correct":
            self.__app_state = "distance_correct"




    ###################################################################
    def app_transitions_state(self):

        if self.__app_state == "end_app":
            self.__skill_finished = True

        elif self.__app_state == "starting_app_welcome":
            self.__app_state = "waiting_welcome"
            t = "Bienvenido. Colocate a una distancia correcta"
            #menu_value = "Sí|No"
            #menu_type = "text"
            #self.tablet_ca_msg(t=t,msg_type="sino_welcome",menu_value=menu_value,menu_type=menu_type)
            self.say_ca_msg(t=t, ca_type='sentence', etts_type='welcome')
            self.__waiting_answer = True

        elif self.__app_state == "tutorial_finish":
            self.__app_state = "wait_tutorial_finish"
            t = "Se acabó los ejercicios, muchas gracias por su participación."
            self.say_ca_msg(t=t, ca_type='sentence', etts_type='tutorial_finish')
            self.__waiting_answer = True

        elif self.__app_state == "fin_tutorial":
            self.__skill_finished = True


        elif self._num_person >= 1:
            if len(self._tmp_state):
                self._tmp_state = []
                self.__app_state = "check_gesture"

            elif self.__app_state == "starting_distance_timer":
                self.__app_state = "waiting_timer"
                rospy.loginfo("init timer distance user")
                self.__distance_timer = rospy.Timer(rospy.Duration(4), self.timerCallback)
                self._check_distance = True

            elif self.__app_state == "say_user_close":
                self.__app_state = "waiting_instruction_user_close"
                t = "Debes acercarte un poco a la cámara."
                self.say_ca_msg(t=t, ca_type='sentence', etts_type='user_close')
                self.__waiting_answer = True

            elif self.__app_state == "say_user_far":
                self.__app_state = "waiting_instruction_user_far"
                t = "Debes alejarte un poco de la cámara."
                self.say_ca_msg(t=t, ca_type='sentence', etts_type='user_far')
                self.__waiting_answer = True

            elif self.__app_state == "distance_correct":
                self.__app_state = "robot_distance_regreat"
                t = "Muy bien ubicado. Vamos a empezar"
                self.say_ca_msg(t=t, ca_type='sentence', etts_type='distance_correct')
                self.__waiting_answer = True

            elif self.__app_state == "check_gesture":
                self.__app_state = "show_gesture"
                self._gesture_frame= 0
                self._gesture_completed = 0
                t = "Vamos empezar a hacer ejecicio " + self._gesture_name_user
                self.say_ca_msg(t=t, ca_type='sentence', etts_type='detect_gestures')
                self.__waiting_answer = True
      
            elif self.__app_state == "starting_show_gesture":
                self.__app_state = "waiting_show_gesture_image"
                self.__image_timer = rospy.Timer(rospy.Duration(4), self.imageTimerCallback)
                self._image_path = "/video/haobing/"+self._gesture_name_user+".mp4"
                # self._image_path = "/image/haobing/"+self._gesture_name_user+".jpg"
                self.image_ca_msg(image_path=self._image_path)
                self.__waiting_answer = True

            elif self.__app_state == "detect_gesture":
                self.__app_state = "detecting_gestrue"
                t = "Se empieza a detectar"
                self.say_ca_msg(t=t, ca_type='sentence', etts_type='detecting_gesture')
                self.__waiting_answer = True


            elif self.__app_state == "first_check":
                self.__app_state = "first_checking"
                self.__firstcheck_timer = rospy.Timer(rospy.Duration(3), self.firstcheckTimerCallback)
                self.__gesture_state = "complete_frame0"
                self._check_gesture = True


            elif self.__app_state == "tips_frame0":
                self.__app_state = "start_second_check"
                t = self._tips_words[self._gesture_index][0]
                self.say_ca_msg(t=t, ca_type='sentence', etts_type='tips_words0')
                self._check_gesture = True
                self.__waiting_answer = True

            elif self.__app_state == "second_check":
                self.__app_state = "second_checking"
                self.__secondcheck_timer = rospy.Timer(rospy.Duration(3), self.secondcheckTimerCallback)
                self._check_gesture = True

            elif self.__app_state == "tips_frame1":
                self.__app_state = "start_third_check"
                t = self._success_words[0] + "y" + self._tips_words[self._gesture_index][1]
                self.say_ca_msg(t=t, ca_type='sentence', etts_type='tips_words1')
                self._check_gesture = True
                self.__waiting_answer = True

            elif self.__app_state == "third_check":
                self.__app_state = "third_checking"
                self.__thirdcheck_timer = rospy.Timer(rospy.Duration(3), self.thirdcheckTimerCallback)
                self._check_gesture = True                

            elif self.__app_state == "tips_frame23":
                self.__app_state = "start_fourth_check"
                t = self._success_words[1] + "y" + self._tips_words[self._gesture_index][2]
                self.say_ca_msg(t=t, ca_type='sentence', etts_type='tips_words23')
                self._check_gesture = True
                self.__waiting_answer = True

            elif self.__app_state == "fourth_check":
                self.__app_state = "fourth_checking"
                self.__fourthcheck_timer = rospy.Timer(rospy.Duration(3), self.fourthcheckTimerCallback)
                self._check_gesture = True                


            elif self.__app_state == "gesture_correct":
                self.__app_state = "waiting_g_correct_etts"
                t = self._success_words[3] + "El grado de finalización es" + str(self._gesture_completed) + "por ciento"
                self.say_ca_msg(t=t, ca_type='sentence', etts_type='gesture_correct')
                self.__waiting_answer = True

            elif self.__app_state == "gesture_incorrect":
                self.__app_state = "waiting_g_incorrect_etts"
                t = self._failed_words + "El grado de finalización es" + str(self._gesture_completed) + "por ciento"
                self.say_ca_msg(t=self._failed_words, ca_type='sentence', etts_type='gesture_incorrect')
                self.__waiting_answer = True

            elif self.__app_state == "repeat_exercise_ask":
                self.__app_state = "wait_repeat_exercise_answer"
                menu_value = "Sí|No"
                menu_type = "text"
                continue_exercise = "¿Desea repetir el ejercicio?"
                self.tablet_ca_msg(t=continue_exercise,msg_type="sino_siguiente",menu_value=menu_value,menu_type=menu_type)
                self.__waiting_answer = True


            elif self.__app_state == "next_exercise_ask":
                self.__app_state = "wait_next_exercise_answer"
                menu_value = "Sí|No"
                menu_type = "text"
                continue_exercise = "¿Desea continuar?"
                self.tablet_ca_msg(t=continue_exercise,msg_type="sino_siguiente",menu_value=menu_value,menu_type=menu_type)
                self.__waiting_answer = True

            elif self.__app_state == "next_exercise":
                self.__app_state = "continue_exercise"
                self._index_gesture += 1
                self._gesture_name_user = self._gesture2user[self._index_gesture]
                t = "Vale, continuamos el siguiente ejercicio"

                self.say_ca_msg(t=t, ca_type='sentence', etts_type='gesture_siguiente')
                self.__waiting_answer = True

        elif self._num_person == 0:
            
            if self.__app_state == "nobody_detected":
                self.__app_state = "waiting_detect_user"
                t = "No se detecta nadie. Continuamos el tutorial frente al robot por favor."
                self.say_ca_msg(t=t, ca_type='sentence', etts_type='detect_user')
                self.__waiting_answer = True

            print("self._tmp_state",self._tmp_state)
            print("self.__app_state",self.__app_state)



    ## @brief Send a CA message
    ## @param ca_type: sentence or question
    ## @param etts_type: type of sentence or question   
    def say_ca_msg(self, t=None, ca_type=None, etts_type=None):

        if ca_type == 'sentence':
            ca_msg = makeCA_etts_info(t, emitter=pkg_name)

        rospy.loginfo("Adding __active_cas[%s]", ("ca_" + ca_msg.ca_name))
        self.__active_cas.append("ca_" + ca_msg.ca_name)

        rospy.loginfo("[Sending CA %s ]", ca_type)
        self.__pub_ca.publish(ca_msg)


    ## @brief Send the CA message (tablet menu)
    ## @param msg_type: kind of menu
    def tablet_ca_msg(self, t=None, msg_type=None, menu_value=None, menu_type=None):

        """
        ca_msg = makeCA_tablet_question(menu_value=menu_value, 
            menu_type=menu_type, 
            etts_text=t, 
            emitter=pkg_name, 
            answer_time=10)
        """
        ca_msg = makeCA_question(answer_type="ASR|tablet_menu", 
                #etts_text="Di sí o no",
                etts_text = t,
                answer_id="sino", 
                grammar="si_no.gram",
                menu_value="Sí|No",
                menu_type=menu_type,
                answer_time=15,
                answer_attempts=2,
                emitter=pkg_name
        )

        rospy.loginfo("Adding __active_cas[%s]", ("ca_" + ca_msg.ca_name))
        self.__active_cas.append("ca_" + ca_msg.ca_name)

        rospy.logdebug("[Sending CA %s ]", msg_type)
        self.__pub_ca.publish(ca_msg)


    def image_ca_msg(self, image_path=None):
        
        ca_msg = makeCA_tablet_info(tablet_type='video', tablet_url=image_path, emitter=self._emitter)

        rospy.loginfo("Adding __active_cas[%s]", ("ca_" + ca_msg.ca_name))
        self.__active_cas.append("ca_" + ca_msg.ca_name)

        rospy.logdebug("[Sending CA image]")
        self.__pub_ca.publish(ca_msg)


    def imageTimerCallback(self, event):
        rospy.loginfo("timer image finished...showing default image")
        self.__image_timer.shutdown()
        self.__image_timer = None
        tablet_msg = makeCA_defaultImage()
        self.__pub_ca.publish(tablet_msg)
        if self.__app_state == "waiting_show_gesture_image":
            self.__app_state = "finish_show_image"
            self.state_transition()




    def GesResultCallback(self, result):   # [T.f.f.t]
        if self._check_gesture:
            #ca_msg_success = makeCA_info(etts_text=self._success_words[gesture_frame], emitter=self._emitter)
            #ca_msg_tips = makeCA_info(etts_text=self._tips_words[self._gesture_index][gesture_frame], emitter=self._emitter)
            #ca_msg_failed = makeCA_info(etts_text=self._failed_words, emitter=self._emitter)


            if self._gesture_frame == 0 and result.data[self._gesture_frame] and self._check_gesture:
                # print(self._success_words[gesture_frame])
                #self.ca_pub.publish(ca_msg_success)
                # self._gesture_frame += 1
                self.__gesture_state = "complete_frame1"
                self._gesture_frame  = 1

            elif self._gesture_frame == 1 and (result.data[1] or result.data[2]) and self._check_gesture:
                self.__gesture_state = "complete_frame23"
                self._gesture_frame = 3


            elif self._gesture_frame < 4 and result.data[3] and self._check_gesture:
                # print(self._success_words[gesture_frame])
                #self.ca_pub.publish(ca_msg_success)
                # self._gesture_frame += 1
                #self._feedback.app_status = "gesture_success"
                #self._feedback.percentage_completed = gesture_frame*0.25
                #self._as.publish_feedback(self._feedback)
                # self._gesture_frame = 0
                self._gesture_frame += 1
                self._check_gesture = False
                self.__gesture_state = "success_gesture"


            self._gesture_completed = (self._gesture_frame * 25)




    def firstcheckTimerCallback(self, event):
            rospy.loginfo("timer finished...1 time checking user gesture")
            self._check_gesture = False
            self.__firstcheck_timer.shutdown()
            self.__firstcheck_timer = None

            if self.__gesture_state == "complete_frame0":
                self.__count_frame0 = 1
                self.__app_state = "tips_frame0"

            elif self.__gesture_state  == "complete_frame1":
                self.__count_frame1 = 1
                self.__app_state = "tips_frame1"

            elif self.__gesture_state == "complete_frame23":
                self.__count_frame23 = 1
                self.__app_state = "tips_frame23"

            elif self.__gesture_state == "success_gesture":
                self.__app_state = "gesture_correct"
                


    def secondcheckTimerCallback(self, event):
            rospy.loginfo("timer finished...2 time checking user gesture")
            self._check_gesture = False
            self.__secondcheck_timer.shutdown()
            self.__secondcheck_timer = None

            if self.__gesture_state == "complete_frame0":
                if self.__count_frame0 == 1:
                    self.__app_state = "gesture_incorrect"
                else:
                    self.__app_state = "tips_frame0"
                    self.__count_frame0 = 1

            elif self.__gesture_state  == "complete_frame1":
                if self.__count_frame1 == 1:
                    self.__app_state = "gesture_incorrect"
                else:
                    self.__count_frame1 = 1
                    self.__app_state = "tips_frame1"

            elif self.__gesture_state == "complete_frame23":
                if self.__count_frame23 == 1:
                    self.__app_state = "gesture_incorrect"
                else:
                    self.__count_frame23 = 1
                    self.__app_state = "tips_frame23"

            elif self.__gesture_state == "success_gesture":
                self.__app_state = "gesture_correct"


    def thirdcheckTimerCallback(self, event):
            rospy.loginfo("timer finished...3 time checking user gesture")
            self._check_gesture = False
            self.__thirdcheck_timer.shutdown()
            self.__thirdcheck_timer = None

            if self.__gesture_state == "complete_frame0":
                if self.__count_frame0 == 1:
                    self.__app_state = "gesture_incorrect"
                else:
                    self.__app_state = "tips_frame0"
                    self.__count_frame0 = 1

            elif self.__gesture_state  == "complete_frame1":
                if self.__count_frame1 == 1:
                    self.__app_state = "gesture_incorrect"
                else:
                    self.__count_frame1 = 1
                    self.__app_state = "tips_frame1"

            elif self.__gesture_state == "complete_frame23":
                if self.__count_frame23 == 1:
                    self.__app_state = "gesture_incorrect"
                else:
                    self.__count_frame23 = 1
                    self.__app_state = "tips_frame23"

            elif self.__gesture_state == "success_gesture":
                self.__app_state = "gesture_correct"


    def fourthcheckTimerCallback(self, event):
            rospy.loginfo("timer finished...4 time checking user gesture")
            self._check_gesture = False
            self.__fourthcheck_timer.shutdown()
            self.__fourthcheck_timer = None

            if self.__gesture_state == "complete_frame0":
                if self.__count_frame0 == 1:
                    self.__app_state = "gesture_incorrect"
                else:
                    self.__app_state = "tips_frame0"
                    self.__count_frame0 = 1

            elif self.__gesture_state  == "complete_frame1":
                if self.__count_frame1 == 1:
                    self.__app_state = "gesture_incorrect"
                else:
                    self.__count_frame1 = 1
                    self.__app_state = "tips_frame1"

            elif self.__gesture_state == "complete_frame23":
                if self.__count_frame23 == 1:
                    self.__app_state = "gesture_incorrect"
                else:
                    self.__count_frame23 = 1
                    self.__app_state = "tips_frame23"

            elif self.__gesture_state == "success_gesture":
                self.__app_state = "gesture_correct"
