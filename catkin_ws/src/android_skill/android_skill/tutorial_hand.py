#!/usr/bin/env python
# -*- coding: utf-8 -*-

__author__ = "XIANG LIU"
__copyright__ = "Social Robots Group. Robotics Lab. University Carlos III of Madrid"
__credits__ = ["XIANG LIU"]
__license__ = "LEUC3M v1.0"
__version__ = "0.0.0"
__maintainer__ = "XIANG LIU"
__email__ = "100414518@alumnos.uc3m.es"
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
from ros_openpose.msg import Gesture
from threading import Timer
from itertools import chain

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


class TutorialHandSkill(Skill):

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
        self.__image_timer = None
        self.__gesturetips_timer = None
        self.__gesture_timer = None
        self.__gesture_state = None

        self._as = None 
        self._check_distance = False
        self._hand_tutorial = True

        # params for body/hand tutorial
        self._hand_cb = False
        self._target_hand_gesture = ""
        self._hand_result = False
        self._gesture_index = 0


        self._ca_answer = ""
        self._image_path = ""   # Current photo's url


        self._ca_names = []
        self._emitter = skill_name.split("_")[0] + "_ca" # Create CA emitter

    
        # list of body gestures
        self._hand_gestures = ["descansar", "despertar", "gusta", "no_gusta", "ok", "bloquear", "desbloquear", 
        "apagado", "paz_amor", "roca", "silencio", "cancelar", "ampliar", "disminuir"]

        self._tips_words = "No se detecta correctamente, ajuste la acción por favor."
        self._failed_words = "Aunque no está terminado esta vez, hiciste un buen trabajo, terminemos esta acción."
        self._success_words = "Genial! felicitaciones por completar este ejercicio."

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
        
        
        ## ROS Subscriber: receive the distance
        rospy.Subscriber("distance_depth2user", Distance2user, self.distanceCallback)

        ## ROS Subscriber: receive the result of gesture
        rospy.Subscriber("gesture_hand", Gesture, self.handgesture_cb)
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

        rospy.loginfo("[START TUTORIAL_HAND SKILL]")



    def distanceCallback(self, distance):
        #ca_msg1 = makeCA_info(etts_text="Acércate a la cámara por favor.", emitter=self._emitter)
        #ca_msg2 = makeCA_info(etts_text="Manténgase alejado de la cámara por favor.", emitter=self._emitter)
        #ca_msg3 = makeCA_info(etts_text="La detección de distancia de usuarios es perfecta, puedes iniciar el tutorial.", emitter=self._emitter)
        if self._check_distance:
                
            if distance.distance > 1.3:
                rospy.loginfo("Acércate a la cámara por favor.")
                self.__app_state = "distance_user_so_far"    

            if distance.distance < 0.7:
                rospy.loginfo("Manténgase alejado de la cámara por favor.")
                self.__app_state = "distance_user_so_close" 

            if distance.distance > 0.7 and distance.distance < 1.3:
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
                            if ans == "sí" or ans == "si":
                                self.__app_state = "check_gesture"
                            elif ans == "no":
                                self.__app_state = "next_exercise_ask"

                        if self.__app_state == "wait_next_exercise_answer":
                            if ans == "sí" or ans == "si":
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
        if self.__app_state == "waiting_welcome":
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

        elif self.__app_state == "robot_recommanding":
            self.__app_state = "recommand_secondtime"

        elif self.__app_state == "detecting_gesture":
            self.__app_state = "recommand_firsttime"

        elif self.__app_state == "continue_tutorial":
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
                    self._target_hand_gesture = self._hand_gestures[self._gesture_index]

                    if self.app_status in ['start_ok', 'resume_ok']:
                        self.app_transitions_state()
                    if self._gesture_index == len(self._hand_gestures):
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

    def imageTimerCallback(self, event):
        rospy.loginfo("timer image finished...showing default image")
        self.__image_timer.shutdown()
        self.__image_timer = None
        tablet_msg = makeCA_defaultImage()
        self.__pub_ca.publish(tablet_msg)
        if self.__app_state == "waiting_show_gesture_image":
            self.__app_state = "finish_show_image"
            self.state_transition()


    ###################################################################
    def app_transitions_state(self):

        if self.__app_state == "end_app":
            self.__skill_finished = True
        else:
            if self.__app_state == "starting_app_welcome":
                self.__app_state = "waiting_welcome"
                t = "Bienvenido al tutorial de reconocimiento de gestos. Colocate a una distancia correcta"
                #menu_value = "Sí|No"
                #menu_type = "text"
                #self.tablet_ca_msg(t=t,msg_type="sino_welcome",menu_value=menu_value,menu_type=menu_type)
                self.say_ca_msg(t=t, ca_type='sentence', etts_type='welcome')
                self.__waiting_answer = True

            elif self.__app_state == "starting_distance_timer":
                self.__app_state = "waiting_timer"
                rospy.loginfo("init timer distance user")
                self.__distance_timer = rospy.Timer(rospy.Duration(5), self.timerCallback)
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
                t = "Muy bien ubicado. Vamos a empezar los ejercicios"
                self.say_ca_msg(t=t, ca_type='sentence', etts_type='distance_correct')
                self.__waiting_answer = True

            elif self.__app_state == "check_gesture":
                self.__app_state = "show_gesture"
                self.__gesture_state = ""
                t = "Vamos empezar a hacer ejecicio " + self._target_hand_gesture
                self.say_ca_msg(t=t, ca_type='sentence', etts_type='detect_gestures')
                self.__waiting_answer = True
      
            elif self.__app_state == "starting_show_gesture":
                self.__app_state = "waiting_show_gesture_image"
                rospy.loginfo("init timer first detection gesture")
                self.__image_timer = rospy.Timer(rospy.Duration(5), self.imageTimerCallback)
                self._image_path = "/image/xiang/hand/"+self._target_hand_gesture+".png"
                self.image_ca_msg(image_path=self._image_path)
                self.__waiting_answer = True

            elif self.__app_state == "detect_gesture":
                self.__app_state = "detecting_gesture"
                t = "Se empieza a detectar"
                self._hand_cb = True
                self.say_ca_msg(t=t, ca_type='sentence', etts_type='detecting_gesture')
                # self._time_counter = time.time()
                self.__waiting_answer = True

            elif self.__app_state == "recommand_firsttime":
                self.__app_state = "first_checking"
                self.__gesturetips_timer = rospy.Timer(rospy.Duration(5), self.gesturetipsTimerCallback)
                self._hand_cb = True

            elif self.__app_state == "recommand_user":
                self.__app_state = "robot_recommanding"
                t = self._tips_words + "Se detecta otra vez"
                rospy.loginfo("init timer second detection gesture")
                self.say_ca_msg(t=t, ca_type='sentence', etts_type="second_detect")
                self._hand_cb = True
                self.__waiting_answer = True

            elif self.__app_state == "recommand_secondtime":
                self.__app_state = "second_checking"
                self.__gesture_timer = rospy.Timer(rospy.Duration(5), self.gestureTimerCallback)
                self._hand_cb = True

            elif self.__app_state == "gesture_correct":
                self.__app_state = "waiting_g_correct_etts"
                self.say_ca_msg(t=self._success_words, ca_type='sentence', etts_type='gesture_correct')
                self.__waiting_answer = True

            elif self.__app_state == "gesture_incorrect":
                self.__app_state = "waiting_g_incorrect_etts"
                self.say_ca_msg(t=self._failed_words, ca_type='sentence', etts_type='gesture_incorrect')
                self.__waiting_answer = True


            elif self.__app_state == "repeat_exercise_ask":
                self.__app_state = "wait_repeat_exercise_answer"
                menu_value = "Sí|No"
                menu_type = "text"
                continue_exercise = "¿Desea repetir el ejercicio"+self._target_hand_gesture
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
                self.__app_state = "continue_tutorial"
                self._gesture_index += 1
                self._target_hand_gesture = self._hand_gestures[self._gesture_index]
                t = "Vale, continuamos el siguiente ejercicio"
                self.say_ca_msg(t=t, ca_type='sentence', etts_type='gesture_siguiente')
                self.__waiting_answer = True

            elif self.__app_state == "tutorial_finish":
                self.__app_state = "wait_tutorial_finish"
                t = "Se acabó tutorial del reconocimiento de gestos, muchas gracias por su participación."
                self.say_ca_msg(t=t, ca_type='sentence', etts_type='tutorial_finish')
                self.__waiting_answer = True

            elif self.__app_state == "fin_tutorial":
                self.__skill_finished = True


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
        
        ca_msg = makeCA_tablet_info(tablet_type='image', tablet_url=image_path, emitter=self._emitter)

        rospy.loginfo("Adding __active_cas[%s]", ("ca_" + ca_msg.ca_name))
        self.__active_cas.append("ca_" + ca_msg.ca_name)

        rospy.logdebug("[Sending CA image]")
        self.__pub_ca.publish(ca_msg)


    def handgesture_cb(self, result):
        
        if self._hand_cb:

            rospy.loginfo(result.lefthand)
            rospy.loginfo(result.righthand)
            
            if self._target_hand_gesture in [result.lefthand, result.righthand]:
                self.__gesture_state = "success_gesture"
                self._hand_cb = False

            else:
                # self._time_count1 = time.time()
                # 5 sec for tips
                # if self._time_count1-self._time_counter >= 8 and self._time_count1-self._time_counter <= 10:
                    # self.__app_state = "recommand_user"
    
                # each gestrue detect max 10 sec
                # if self._time_count1-self._time_counter >= 18 and self._time_count1-self._time_counter <= 20:
                self.__gesture_state = "failed_gesture"
                    # self._hand_cb = False




    def gesturetipsTimerCallback(self, event):
            rospy.loginfo("timer finished...first time checking user gesture")
            self._hand_cb = False
            self.__gesturetips_timer.shutdown()
            self.__gesturetips_timer = None
            if self.__gesture_state  == "success_gesture":
                self.__app_state = "gesture_correct"

            else:
                self.__app_state = "recommand_user"


    def gestureTimerCallback(self, event):
            rospy.loginfo("timer finished...second time checking user gesture")
            self._hand_cb = False
            self.__gesture_timer.shutdown()
            self.__gesture_timer = None
            if self.__gesture_state  == "success_gesture":
                self.__app_state = "gesture_correct"

            else:
                self.__app_state = "gesture_incorrect"
