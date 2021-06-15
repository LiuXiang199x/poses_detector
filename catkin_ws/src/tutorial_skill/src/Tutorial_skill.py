#!/usr/bin/env python
# -*- coding: utf-8 -*-

## @file Tutorial_skill.py
#  @author Xiang Liu.
#  @date  May,2021
# \copyright Copyright (c) 2021, Universidad Carlos III de Madrid. Todos los derechos reservados.

__author__ = "Xiang Liu"
__copyright__ = "Social Robots Group. Robotics Lab. University Carlos III of Madrid"
__credits__ = ["XIANG LIU"]
__license__ = "LEUC3M v1.0"
__version__ = "0.0.0"
__maintainer__ = "Xiang Liu"
__email__ = "100414518@alumnos.uc3m.es"
__status__ = "Development"


from skill.skill import Skill, ActionlibException, CONDITIONAL
from interaction_utils.key_value_pairs import to_dict
from ros_openpose.msg import Frame
from ros_openpose.msg import Gesture
from ros_openpose.msg import Distance2user
from itertools import chain
from interaction_msgs.msg import CA
from interaction_msgs.msg import CaResult

import rospy
import numpy as np
import pandas as pd
import time
import cv2 as cv
import os
import matplotlib.pyplot as plt
import matplotlib.image as mping
import roslib
import importlib
import actionlib
import json


# Package name
pkg_name = 'tutorial_skill'
roslib.load_manifest(pkg_name)

# declare this only if the name is different of 'pkg_name'
skill_name = "tutorial_skill"

#---------------------------------------------------------------------------------------#
# Skill class: ExerciseSkill
#---------------------------------------------------------------------------------------#

## @class TutorialSkill
## @brief Tutorial of gesture recognition

class TutorialSkill(object):

	_feedback = tutorial_skill.msg.TutorialFeedback() 
	_result = tutorial_skill.msg.TutorialR0esult() 
	
	def __init__(self):

		Skill.__init__(self, skill_name, CONDITIONAL)

		# Attributes
		self._as = None 
		self._checkbody_distance = False
		self._checkhand_distance = False
		self._body_tutorial = True
		self._hand_tutorial = True

		# params for body/hand tutorial
		self._body_cb = False
		self._hand_cb = False
		self._target_body_gesture = ""
		self._target_hand_gesture = ""
		self._body_result = False
		self._hand_result = False

		self._ca_answer = ""
		self._photo_path = ""	# Current photo's url

		self._ca_names = []
		self._emitter = skill_name.split("_")[0] + "_ca" # Create CA emitter

		# list of hand gestures
		self._hand_gestures = ["rest", "awaken", "like", "dislike", "ok", "lock", "unlock", 
		"power_off", "peace&love", "rock", "silence", "cancle", "zoom_out", "zoom_in"]
	
		# list of body gestures
		self._body_gestures = [ "relaxed", "tired", "no", "yes", "hello", "hello_asia",
		        "cheer_up", "sit_down", "pointing_direction", "wait", 
			"continue", "stop", "stand"]

		self._tips_words = "No se detecta correctamente, ajuste la acción por favor."
		self._failed_words = "Aunque no está terminado esta vez, hiciste un buen trabajo, terminemos esta acción."
		self._success_words = "Genial! felicitaciones por completar este ejercicio."
		self._welcome_words = "Bienvenido al tutorial de detección de postura, primero comenzamos con la detección del cuerpo y luego con la detección de gestos. También puede optar por omitir los tutoriales."
	
		self.create_msg_srv()

	def create_msg_srv(self):

		## ROS Publisher: Send CA messages
		self.ca_pub = rospy.Publisher("hri_manager/ca_activations", CA, queue_size=10)

		## ROS Subscriber: receive the distance
		rospy.Subscriber("distance_depth2user", Distance2user, self.distanceCallback)

		## ROS Subscriber: receive the result of gesture
    		rospy.Subscriber("gesture_body", Gesture, self.bodygesture_cb)
		rospy.Subscriber("gesture_hand", Gesture, self.handgesture_cb)

		## ROS Subscriber: CA Result
		rospy.Subscriber("ca_result", CaResult, self.ca_result_callback)		

		# Start the action
		if not self._as:
			self._as = actionlib.SimpleActionServer(skill_name, tutorial_skill.msg.TutorialAction, execute_cb=self.execute_cb, auto_start=False)
			self._as.start()



	def distanceCallback(self, distance):
		ca_msg1 = makeCA_info(etts_text="Acércate a la cámara por favor.", emitter=self._emitter)
		ca_msg2 = makeCA_info(etts_text="Manténgase alejado de la cámara por favor.", emitter=self._emitter)
		ca_msg3 = makeCA_info(etts_text="La detección de distancia de usuarios es perfecta, puedes iniciar el tutorial.", emitter=self._emitter)

		# distance [2, 2.5] for body tutorial
		if self._checkbody_distance:
			if distance.distance > 2.5:
				self.ca_pub.publish(ca_msg1)

			if distance.distance < 2:
				self.ca_pub.publish(ca_msg2)

			else:
				self.ca_pub.publish(ca_msg3)
				self._checkbody_distance = False

		# distance [1, 1.3] for hand tutorial
		if self._checkhand_distance:
			if distance.distance > 1.3:
				self.ca_pub.publish(ca_msg1)

			if distance.distance < 1:
				self.ca_pub.publish(ca_msg2)

			else:
				self.ca_pub.publish(ca_msg3)
				self._checkhand_distance = False


	def ca_result_callback(self, result):
		params = {}
		values = to_dict(result.values)    

		if bool(self._ca_names):
			ca_name_id = result.ca_name.replace("ca_", "")
			if ca_name_id == self._ca_names[-1]:
				ans= values["answer_value"]
				if ans == "si":
					self._ca_answer = ans	

				elif ans == "no":
					self._ca_answer = ans				
				self._ca_names.remove(ca_name_id)



	def bodygesture_cb(self, result):
		ca_msg_tips = makeCA_info(etts_text=self._tips_words, emitter=self._emitter)
		ca_msg_failed = makeCA_info(etts_text=self._failed_words, emitter=self._emitter)
		ca_msg_success = makeCA_info(etts_text=self._success_words, emitter=self._emitter)
		gesture_name = "body_"+self._target_body_gesture
		
		if self._body_cb:
			if self._target_body_gesture == result.body:
				self._feedback.app_status = gesture_name
				self._feedback.percentage_completed = 1
				self._as.publish_feedback(self._feedback)
				self._body_cb = False

			else:
				self._time_count1 = time.time()
				# 5 sec for tips
				if self._time_count1-self._time_count == 5:
					self.ca_pub(ca_msg_tips)
	
				# each gestrue detect max 10 sec
				if self._time_count1-self._time_count == 10:
					self._feedback.app_status = gesture_name
					self._feedback.percentage_completed = 0
					self._as.publish_feedback(self._feedback)
					self._body_cb = False




	def show_image(self, image_path):

		ca_msg = makeCA_tablet_info(tablet_type='image', tablet_url=image_path, emitter=self._emitter)
		self.ca_pub.publish(ca_msg)		# Send CA msg




	def body_tutorial(self):
		ca_msg = makeCA_info(etts_text="Bienvenido a la detección de la postura corporal", emitter=self._emitter)
		ca_msg_end = makeCA_info(etts_text="Fin del tutorial del cuerpo, muchas gracias! Puedes optar por repetir ejercicios del cuerpo o realizar ejercicios de gestos o salir del tutorial.", emitter=self._emitter)

		self.ca_pub.publish(ca_msg)
		self._body_counter = 0
		for bodygesture_name in self._body_gestures:
			self._body_counter += 1
			img_path_body = "../image/xiang/body/"+bodygesture_name+".png"
			self.show_image(img_path_body)
			self._target_body_gesture = bodygesture_name
			self._time_count = time.time()
			self._body_cb = True
			while self._body_cb:
				pass
				
			ca_msg_continuebody = makeCA_question("ASR",etts_text="Quieres continuar?",menu_value="si|no", answer_time=10,answer_value="si",emitter=self._emitter)
			self._ca_names.append(ca_msg_continuebody.ca_name)
			self.ca_pub.publish(ca_msg_continuebody)
			while not self._ca_answer in ["si", "no"]:
				pass
			if self._ca_answer == "si":
				self._ca_answer = ""
				pass
			if answer_continue_body == "no":
				self._ca_answer = ""
				break

		if self._body_counter == len(self._body_gestures):
			self._body_result = True
		self.ca_pub(ca_msg_end)




	def handgesture_cb(self, result):
		ca_msg_tips = makeCA_info(etts_text=self._tips_words, emitter=self._emitter)
		ca_msg_failed = makeCA_info(etts_text=self._failed_words, emitter=self._emitter)
		ca_msg_success = makeCA_info(etts_text=self._success_words, emitter=self._emitter)
		gesture_name = "hand_"+self._target_hand_gesture
		
		if self._hand_cb:
			if self._target_hand_gesture in [result.lefthand, result.righthand]:
				self._feedback.app_status = gesture_name
				self._feedback.percentage_completed = 1
				self._as.publish_feedback(self._feedback)
				self._hand_cb = False

			else:
				self._time_count1 = time.time()
				if self._time_count1-self._time_count == 5:
					self.ca_pub(ca_msg_tips)

				# each gestrue detect max 10 sec
				if self._time_count1-self._time_count == 10:
					self._feedback.app_status = gesture_name
					self._feedback.percentage_completed = 0
					self._as.publish_feedback(self._feedback)
					self._hand_cb = False


	def hand_tutorial(self):
		ca_msg = makeCA_info(etts_text="Bienvenido a la detección del gesto", emitter=self._emitter)

		ca_msg_end = makeCA_info(etts_text="Fin del tutorial del gestos, muchas gracias! Puedes optar por repetir ejercicios del cuerpo o realizar ejercicios de gestos o salir del tutorial.", emitter=self._emitter)

		self.ca_pub.publish(ca_msg)
		self._hand_counter = 0
		for handgesture_name in self._hand_gestures:
			self._hand_counter += 1
			img_path_hand = "../image/xiang/hand/"+handgesture_name+".png"
			self.show_image(img_path_hand)
			self._target_hand_gesture = handgesture_name
			self._time_count = time.time()
			self._hand_cb = True
			while self._hand_cb:
				pass
				
			ca_msg_continuehand = makeCA_question("ASR",etts_text="Quieres continuar?",menu_value="si|no", answer_time=10,answer_value="si",emitter=self._emitter)
			self._ca_names.append(ca_msg_continuehand.ca_name)
			self.ca_pub.publish(ca_msg_continuehand)
			while not self._ca_answer in ["si", "no"]:
				pass
			if self._ca_answer == "si":
				self._ca_answer = ""
				pass
			if answer_continue_hand == "no":
				self._ca_answer = ""
				break

		if self._hand_counter == len(self._hand_gestures):
			self._hand_result = True
		self.ca_pub(ca_msg_end)



	# goal can be any value - unit32. goal: para terminar tutorial del cuerpo y mano
	# feedback:
	# 	app_status: hand/body + gesture_name
	# 	percentage_completed: 0/1[1,0,0,1.....].  si se reconocer el gesto(un gesto)
	# result:0/1/-1.  -1:error.  1:termina dos tutorial.  0:niguna o solo un tutorial
	def execute_cb(self, goal):

		self._feedback.engagement = True
		self._feedback.percentage_completed = 0


		ca_msg_intro = makeCA_info(etts_text=self._welcome_words, emitter=self._emitter)
		self._ca_pub(ca_msg_intro)


		while self._hand_tutorial or self._body_tutorial:
			if self._body_tutorial:
				ca_msg_startbody = makeCA_question("ASR",etts_text="Empezamos el tutorial del cuerpo?",menu_value="si|no", answer_time=10,answer_value="si", emitter=self._emitter)
				self._ca_names.append(ca_msg_startbody.ca_name)
				self.ca_pub.publish(ca_msg_startbody)
				while not self._ca_answer in ["si", "no"]:
					pass
				if self._ca_answer == "si":
					self._checkbody_distance = True
					while self._checkbody_distance:
						pass
					self._ca_answer = ""
					self.body_tutorial()
				self._ca_answer = ""
				self._body_tutorial = False


			if self._hand_tutorial:
				ca_msg_starthand = makeCA_question("ASR", etts_text="Empezamos el tutorial del mano?",menu_value="si|no", answer_time=10,answer_value="si", emitter=self._emitter)
				self._ca_names.append(ca_msg_starthand.ca_name)
				self.ca_pub.publish(ca_msg_starthand)
				while not self._ca_answer in ["si", "no"]:
					pass
				if self._ca_answer == "si":
					self._checkhand_distance = True
					while self._checkhand_distance:
						pass
					self._ca_answer = ""
					self.hand_tutorial()
				self._ca_answer = ""
				self._hand_tutorial = False


		if self._body_result and self._hand_result:
			self._result.skill_result = self._result.SUCCESS
			self._as.set_succeeded(self._result)
		else:
			self._result.skill_result = self._result.FAIL
			self._as.set_succeeded(self._result)

		ca_msg_fin = makeCA_info(etts_text="Se acabó el tutorial, ¡muchas gracias por tu participación!", emitter=self._emitter)
		self._ca_pub(ca_msg_fin)




if __name__ == '__main__':

	try:
		# start the node
		rospy.init_node("TutorialSkill", anonymous=False)

		# create and spin the node
		node = TutorialSkill()
		rospy.spin()

	except rospy.ROSInterruptException:
		pass

