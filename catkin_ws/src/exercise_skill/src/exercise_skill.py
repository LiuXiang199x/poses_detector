#!/usr/bin/env python
# -*- coding: utf-8 -*-

## @file exercise_skill.py
#  @author Haobing Zhong.
#  @date  May,2021
# \copyright Copyright (c) 2021, Universidad Carlos III de Madrid. Todos los derechos reservados.

__author__ = "Haobing Zhong"
__copyright__ = "Social Robots Group. Robotics Lab. University Carlos III of Madrid"
__credits__ = ["Haobing Zhong"]
__license__ = "LEUC3M v1.0"
__version__ = "0.0.0"
__maintainer__ = "Haobing Zhong"
__email__ = "olivia429547795@gmail.com"
__status__ = "Development"

# set_succeeded()
# set_preempted()


import rospy
import roslib
import rospkg
import exercise_skill.msg
import actionlib
import json
import time
import os

from skill.skill import Skill, ActionlibException, CONDITIONAL

from interaction_msgs.msg import CA, CaResult
from interaction_utils.key_value_pairs import to_dict
from interaction_utils.ca_functions import *

from ros_openpose.msg import Distance2user
from ros_openpose.msg import CompThresh
from ros_openpose.srv import ExerciseInfo
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




# Package name
rospack = rospkg.RosPack()
pkg_name = 'exercise_skill'

roslib.load_manifest(pkg_name)

# declare this only if the name is different of 'pkg_name'
skill_name = "exercise_skill"

#---------------------------------------------------------------------------------------#
# Skill class: ExerciseSkill
#---------------------------------------------------------------------------------------#

## @class ExerciseSkill
## @brief Phisical Exercise estimulation

class ExerciseSkill(Skill):

	_feedback = exercise_skill.msg.ExerciseFeedback() 
	_result = exercise_skill.msg.ExerciseResult() 
	
	def __init__(self):

		Skill.__init__(self, skill_name, CONDITIONAL)

		# Attributes
		self._as = None 
		self._check_distance = False
		self._check_gesture = False
		self._time_counter = 0
		self._gesture_frame = 0
		self._gesture_index = 0

		self._ca_answer = ""
		self._video_path = ""	# Current video's url

		self._ca_names = []
		self._emitter = skill_name.split("_")[0] + "_ca" # Create CA emitter

		self._gesture_name = ["Estirar los musculos del hombro hacia arriba", "Estirar los musculos del hombro hacia abajo", "Estirar los musculos del pecho", "Levantamiento de los brazos arriba de la cabeza", "Levantamiento frontal de los brazos", "Levantamiento lateral de los brazos", "Flexion de los brazos", "Estiramientos de la muneca", "Estirar el brazo izquierdo", "Estirar el brazo derecho", "Estirar los brazos de adelante hacia la derecha", "Estirar los brazos de adelante hacia la izquierda", "Levantar los brazos arriba de la cabeza y estirar hacia la derecha", "Levantar los brazos arriba de la cabeza y estirar hacia la izquierda", "Ajustar la respiracion a la version simple", "Ajustar la respiracion a la version avanzada"]

		self._threshold_base_mean = [[0.09510037246899638, 0.10336231522453376, 0.12442091574352789, 0.1430041702685293], 
					[0.09510037246899638, 0.10336231522453376, 0.12442091574352789, 0.12745421585026611], 
					[0.09510037246899638, 0.10336231522453376, 0.12442091574352789, 0.12224336771100576], 
					[0.09510037246899638, 0.11442091574352789, 0.12735880322803049, 0.12328875027603507], 
					[0.09510037246899638, 0.1422496378587482, 0.1442496378587482, 0.14824336771100576],

					[0.09810037246899638, 0.11652091574352789, 0.13735880322803049, 0.13442091574352789], 
					[0.09810037246899638, 0.11742091574352789, 0.12235880322803049, 0.12328875027603507], 
					[0.09810037246899638, 0.10336231522453376, 0.13442091574352789, 0.11328875027603507], 
					[0.09810037246899638, 0.11442091574352789, 0.16735880322803049, 0.14328875027603507], 
					[0.09810037246899638, 0.11442091574352789, 0.16735880322803049, 0.14328875027603507], 

					[0.09810037246899638, 0.11442091574352789, 0.16735880322803049, 0.15828875027603507], 
					[0.09810037246899638, 0.11442091574352789, 0.1635880322803049, 0.14828875027603507], 
					[0.09810037246899638, 0.10336231522453376, 0.12442091574352789, 0.14228875027603507], 
					[0.09810037246899638, 0.10336231522453376, 0.12442091574352789, 0.13928875027603507], 
					[0.09810037246899638, 0.14442091574352789, 0.16735880322803049, 0.14928875027603507],
	 
					[0.09810037246899638, 0.15442091574352789, 0.13735880322803049, 0.14328875027603507]]

		self._words_intro = "Hola, lo que has visto es un sistema de estimulación física.Antes de empezar, prepara una silla y dos objetos pesados que puedas sostener. Manténgalo a unos 2 metros de la cámara.A continuación les mostrare un vídeo de la demostración de acción." 
		self._failed_words = "Hiciste un gran trabajo, pero la acción no se completó."
		self._success_words = ["Buen comienzo!", "Muy bien, sígue así!", "Muy bien, sígue así!", "Felicitaciones por completar esta acción!"]
		self._tips_words = [["Por favor, ponga sus manos en ambos lados para comenzar.", "Levante lentamente las manos de ambos lados.", "Abre tus manos, por favor levanta un poquito.", "Intente doblar el codo 90 grados hacia arriba."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Levante lentamente las manos de ambos lados.", "Abre tus manos, por favor levanta un poquito.", "Intente doblar el codo hacia abajo 90 grados."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Levante lentamente las manos de ambos lados.", "Abre tus manos, por favor levanta un poquito.", "Intenta estirar los brazos hacia atrás."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Abre tus manos, por favor levanta un poquito.", "Trate de doblar los codos desde ámbos lados.", "Vamos! Levanta un poco tu brazo."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Por favor levante las manos desde el frente.", "Intenta subir un poco más el codo.", "¡Vamos! Levanta un poco tu brazo."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Levante lentamente las manos de ambos lados.", "Levanta los brazos lentamente.", "Abre tus manos, por favor levanta un poquito."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Doble lentamente las manos hacia adelante.", "Levanta los brazos lentamente.", "Por favor levanta un poquito."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Levante lentamente las manos de ambos lados.", "Abre tus manos, por favor levanta un poquito.", "Junta tus manos y presiona hacia abajo."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Por favor levante las manos desde el frente.", "¡Vamos! Levanta un poco tu brazo.", "Gira tu mano izquierda hacia la derecha y fíjala con tu mano derecha."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Por favor levante las manos desde el frente.", "¡Vamos! Levanta un poco tu brazo.", "Gira tu mano derecha hacia la derecha y fíjala con tu mano izquierda."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Por favor levante las manos desde el frente.", "¡Vamos! Levanta un poco tu brazo.", "Estirar los brazos de adelante hacia la derecha."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Por favor levante las manos desde el frente.", "¡Vamos! Levanta un poco tu brazo.", "Estirar los brazos de adelante hacia la izquierda."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Levante lentamente las manos de ambos lados.", "Abre tus manos, por favor levanta un poquito.", "Estirar los brazos hacia la derecha."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Levante lentamente las manos de ambos lados.", "Abre tus manos, por favor levanta un poquito.", "Estirar los brazos hacia la izquierda."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Apriete las manos y déjalas caer de forma natural.", "Por favor levante las manos desde el frente.", "¡Vamos! Levanta un poco tu brazo."], ["Por favor, ponga sus manos en ambos lados para comenzar.", "Apriete las manos y déjalas caer de forma natural.", "¡Vamos! Levanta un poco tu brazo.", "Empuja tus manos hacia adelante."]]
		
		self._gesture2user = random.sample(self._gesture_name, 5)

		self.create_msg_srv()


	def create_msg_srv(self):
		## ROS Publisher: Send CA messages
		self.ca_pub = rospy.Publisher("hri_manager/ca_activations", CA, queue_size=10)
		
		## ROS ServiceClient: exercise_name & database
		self.exerciseinfo_srv = rospy.ServiceProxy("exercise_info", ExerciseInfo)
		
		## ROS Subscriber: receive the distance
		rospy.Subscriber("distanceRobot_User", Distance2user, self.distanceCallback)

		## ROS Subscriber: receive the result of gesture
		rospy.Subscriber("compare_gesture", CompThresh, self.GesResultCallback)

		## ROS Subscriber: CA Result
		self.sub_ca_result = rospy.Subscriber("ca_result", CaResult, self.ca_result_callback)		

		# Start the action
		if not self._as:
			self._as = actionlib.SimpleActionServer(skill_name, exercise_skill.msg.ExerciseAction, execute_cb=self.execute_cb, auto_start=False)
			self._as.start()				
		
		rospy.loginfo("[START EXERCISE SKILL]")



	def distanceCallback(self, distance):
		ca_msg1 = makeCA_info(etts_text="Acércate a la cámara por favor.", emitter=self._emitter)
		ca_msg2 = makeCA_info(etts_text="Manténgase alejado de la cámara por favor.", emitter=self._emitter)
		ca_msg3 = makeCA_info(etts_text="La detección de distancia de usuarios es perfecta, puedes iniciar el tutorial.", emitter=self._emitter)
		if self._check_distance:
				
			if distance.distance > 2:
				# print("Acércate a la cámara por favor.")
				self.ca_pub.publish(ca_msg1)	

			if distance.distance < 1.5:
				# print("Manténgase alejado de la cámara por favor.")
				self.ca_pub.publish(ca_msg2)
			else:
				# print("La detección de distancia de usuarios es perfecta, puedes iniciar el tutorial.")
				self.ca_pub.publish(ca_msg3)
				self._check_distance = False



	def GesResultCallback(self, result):   # [T.f.f.t]
		if self._check_gesture:
			ca_msg_success = makeCA_info(etts_text=self._success_words[gesture_frame], emitter=self._emitter)
			ca_msg_tips = makeCA_info(etts_text=self._tips_words[self._gesture_index][gesture_frame], emitter=self._emitter)
			ca_msg_failed = makeCA_info(etts_text=self._failed_words, emitter=self._emitter)
			self._time_gesture = time.time()
			self._gesture_duration = self._time_gesture - self._time_counter

			if gesture_frame < 3 and result.data[gesture_frame] and self._check_gesture:
				# print(self._success_words[gesture_frame])
				self.ca_pub.publish(ca_msg_success)
				gesture_frame += 1	
				self._time_counter = time.time()		
	

			if gesture_frame < 4 and result.data[3] and self._check_gesture:
				# print(self._success_words[gesture_frame])
				self.ca_pub.publish(ca_msg_success)
				gesture_frame += 1
				self._feedback.app_status = "gesture_success"
				self._feedback.percentage_completed = gesture_frame*0.25
				self._as.publish_feedback(self._feedback)
				self._check_gesture = False

			if gesture_frame < 4 and self._gesture_duration == 6 and self._check_gesture:
				# rospy.loginfo(self._failed_words[gesture_index][gesture_frame])		
				self.ca_pub.publish(ca_msg_tips)

			if gesture_frame < 4 and self._gesture_duration == 12 and self._check_gesture:
				# rospy.loginfo(self._failed_words[gesture_index][gesture_frame])
				self.ca_pub.publish(ca_msg_failed)
				self._feedback.app_status = "gesture_failed"
				self._feedback.percentage_completed = gesture_frame*0.25
				self._as.publish_feedback(self._feedback)
				self._check_gesture = False



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




	def show_video(self, video_path):

		ca_msg = makeCA_tablet_info(tablet_type='video', tablet_url=video_path, emitter=self._emitter)
		self.ca_pub.publish(ca_msg)			# Send CA msg




	# goal = 5, to finish exercise
	def execute_cb(self, goal):
		self._result.skill_result = self._result.FAIL				
		self._feedback.engagement = True
		self._feedback.percentage_completed = 0
		self._gesture_count = 0
		self._total_times = goal.max_time
		ca_msg_intro = makeCA_info(etts_text=self._words_intro, emitter=self._emitter)
		self._ca_pub(ca_msg_intro)
		for gesture_name in self._gesture2user:	
			self._gesture_count += 1
			rospy.wait_for_service("exercise_info")

			# Show video:
			self._video_path = "../image/haobing/"+gesture_name+".mp4"
			self.show_video(self._video_path)				
			self._gesture_index = self._gesture_name.index(gesture_name)
			self.response = self.exerciseinfo_srv(gesture_name, self._threshold_base_mean[self._gesture_index])

			self._check_distance = True
			while self._check_distance:
				pass

			self._time_counter = time.time()
			self._check_gesture = True
			while self._check_gesture:
				pass


			ca_msg_repeat = makeCA_question("ASR",etts_text="Quieres volver a intentarlo?",menu_value="si|no", answer_time=10,answer_value="si", emitter=self._emitter)
			self._ca_names.append(ca_msg_repeat.ca_name)
			self.ca_pub.publish(ca_msg_repeat)
			
			while not self._ca_answer in ["si", "no"]:
				pass

			if self._ca_answer == "si":
				self._time_counter = time.time()
				self._check_gesture = True
				while self._check_gesture:
					pass

			self._ca_answer = ""
			ca_msg_continue = makeCA_question("ASR",etts_text="Quieres continuar?",menu_value="si|no", answer_time=10,answer_value="si", emitter=self._emitter)
			self._ca_names.append(ca_msg_continue.ca_name)
			self.ca_pub.publish(ca_msg_continue)
			while not self._ca_answer in ["si", "no"]:
				pass

			if self._ca_answer == "si":
				pass
			if self._ca_answer == "no":
				break

		if self._gesture_count == 5:
			self._result.skill_result = self._result.SUCCESS
			self._as.set_succeeded(self._result)
		else:
			self._as.set_succeeded(self._result)


				


if __name__ == '__main__':

	try:
		# start the node
		rospy.init_node("exercise_skill")

		# create and spin the node
		node = ExerciseSkill()
		rospy.spin()

	except rospy.ROSInterruptException:
		pass

