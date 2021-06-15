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
from ros_openpose.msg import Frame

from hand_gesture_msgs.msg import HandLandmarks
from hand_gesture_msgs.msg import HandLandmark

import rospy
import numpy as np
import pandas as pd
import time
import cv2 as cv
import os
import matplotlib.pyplot as plt
import matplotlib.image as mping
import math
import threading
import codecs
import csv


class Queue:
	def __init__(self):
		self.items = []

	def isEmpty(self):
		return self.items == []

	def enqueue(self, item):
		self.items.insert(0, item)

	def dequeue(self):
		return self.items.pop()

	def size(self):
		return len(self.items)

	def show(self):
		return self.items



def detect_distance(data):
	distance = []
	for num_person in data:
		tmp = 0
		for i in range(len(num_person)):
			tmp += num_person[i][2]
		tmp = tmp/(len(num_person)+1)
		distance.append(tmp)
	return distance


def choose_users_distance(dataset):   # [[[lefth], [righth]],[]] 
	print("key user detecting....")
	resultlh = []
	resultrh = []
	for i in range(len(dataset)):
		impt_test =  SimpleImputer(missing_values=np.nan,strategy='mean')
		resultlh = resultlh + predict_lhand(dataset[i][0])
		resultrh = resultrh + predict_rhand(dataset[i][1])

	print(resultlh,resultrh)
	for personid in range(len(dataset)):
		if resultlh[personid][0] == "like" or resultrh[personid][0] == "like":
			global flag
			flag = False
			print("---over,key user detected---")
			return personid


def callback(msg):
	num = len(msg.persons)  # msg.persons = body+right+left
	global person_index, flag 
	# print("Num of people detected:", num)
	if num >= 1:
		# get data from topic
		bodypart = [bodyPart.point for person in msg.persons for bodyPart in person.bodyParts]  # 1: (25,)     2: (50,)
	    	
	    	# process data
		# 1: (1,25,3)    2: (2,25,3) > (num_person, keypoint, xyz)
		lefthandpart = [lefthandpart.point for person in msg.persons for lefthandpart in person.leftHandParts]
		righthandpart = [righthandpart.point for person in msg.persons for righthandpart in person.rightHandParts]
		
		# process data
		bodydataset = bodydata(num, bodypart)  
		# 1: (1, 2, 21, 3)    2: (2, 2, 21, 3) > (num_person, [lh, rh], keypoint, xyz)		
		handdataset = handdata(num, lefthandpart, righthandpart)

		for tmp_body  in range(len(bodydataset)):
			nan_bodydataset = np.isnan(bodydataset[tmp_body])
			# print(nan_bodydataset)
			bodydataset[tmp_body] = np.nan_to_num(bodydataset[tmp_body])
			bodydataset[tmp_body] = bodydataset[tmp_body].tolist()
			# np.array(bodydataset)[tmp_body][nan_bodydataset] = 0.1

		for tmp_hand  in range(len(handdataset)):
			for hand_tmp in range(len(handdataset[tmp_hand])):			
				nan_handdataset = np.isnan(handdataset[tmp_hand][hand_tmp])
				# print(nan_handdataset)
				handdataset[tmp_hand][hand_tmp] = np.nan_to_num(handdataset[tmp_hand][hand_tmp])
				handdataset[tmp_hand][hand_tmp] = handdataset[tmp_hand][hand_tmp].tolist()
				# np.array(handdataset)[tmp_hand][hand_tmp][nan_handdataset] = 0.1

		# print(bodydataset)
		# print(handdataset)		
		distance2robot = detect_distance(bodydataset)	
		handdataset = normalization_handdata(handdataset)
		person_index = 0

		# print("distance2robot",distance2robot)

		# choose the key user
		if num >= 2:
			# print("El número de usuarios es {}, inicie la detección de usuarios clave, siga las instrucciones.".format(num))	
			
			# 图片要多设置一个线程，不然会拖累主程序
			# show_flag = True
			# person_index = choose_users_gesture(handdataset)
			person_index = distance2robot.index(min(distance2robot))

		# get key user's data
		keyuser_lhanddata = handdataset[person_index][0]
		keyuser_rhanddata = handdataset[person_index][1]  # (21, 3)
		keyuser_distance2robot = distance2robot[person_index]
		# print("keyuser_lhanddata", keyuser_lhanddata)
		print("keyuser_rhanddata",keyuser_rhanddata)

		H = HandLandmarks()
		H.landmarks = [HandLandmark() for _ in range(len(handlandmarks_name))]
		for rhand_count in range(len(keyuser_rhanddata)):
			arr = H.landmarks[rhand_count]
			arr.number = rhand_count
			arr.name = handlandmarks_name[rhand_count]
			arr.coordinates = [keyuser_rhanddata[rhand_count][0],keyuser_rhanddata[rhand_count][1]]
		pub_handpoints.publish(H)
	
	else:
		rospy.loginfo("nobody detected!!")

	rate.sleep()


def normalization_handdata(data):
	for num_person in range(len(data)):
		for handdata in range(len(data[num_person])):
			tmp = data[num_person][handdata][0]

			for i in range(len(data[num_person][handdata])):
				data[num_person][handdata][i] = np.array(data[num_person][handdata][i]) - np.array(tmp)
				data[num_person][handdata][i] = data[num_person][handdata][i].tolist()
			
	return data

def bodydata(num, bodypart):
	bodydataset = []
	count = 1
	while count <= num:
		tmp = []
		for i in range(0+(count-1)*25, 25+(count-1)*25):
			bodypart[i] = str(bodypart[i])
			bodypart[i] = bodypart[i].split("\n")
			for c in range(len(bodypart[i])):
				bodypart[i][c] = float(filter(lambda ch: ch in "-0123465789eE.nan", bodypart[i][c]))
			# print(type(bodypart[i]))  # list
			tmp.append(bodypart[i])
		count += 1
		bodydataset.append(tmp)
	return bodydataset


def handdata(num, lefthandpart, righthandpart):
	handdataset = []
	count = 1
	while count <= num:
		handdatasettmp = []
		tmpl = []
		tmpr = []
		if lefthandpart:
			for i in range(0+(count-1)*21, 21+(count-1)*21):
				lefthandpart[i] = str(lefthandpart[i])
				lefthandpart[i] = lefthandpart[i].split("\n")
				for c in range(len(lefthandpart[i])):
					lefthandpart[i][c] = float(filter(lambda ch: ch in "-0123465789Ee.nan", lefthandpart[i][c]))
				# print(type(bodypart[i]))  # list
				tmpl.append(lefthandpart[i])


		if righthandpart:
			for i in range(0+(count-1)*21, 21+(count-1)*21):
				righthandpart[i] = str(righthandpart[i])
				righthandpart[i] = righthandpart[i].split("\n")
				for c in range(len(righthandpart[i])):
					righthandpart[i][c] = float(filter(lambda ch: ch in "-0123465789Ee.nan", righthandpart[i][c]))
				# print(type(bodypart[i]))  # list	
				tmpr.append(righthandpart[i])
			
		handdatasettmp.append(tmpl)
		handdatasettmp.append(tmpr)
		handdataset.append(handdatasettmp)
		count += 1
	return handdataset

def bodydata(num, bodypart):
	bodydataset = []
	count = 1
	while count <= num:
		tmp = []
		for i in range(0+(count-1)*25, 25+(count-1)*25):
			bodypart[i] = str(bodypart[i])
			bodypart[i] = bodypart[i].split("\n")
			for c in range(len(bodypart[i])):
				bodypart[i][c] = float(filter(lambda ch: ch in "-0123465789eE.nan", bodypart[i][c]))
			# print(type(bodypart[i]))  # list
			tmp.append(bodypart[i])
		count += 1
		bodydataset.append(tmp)
	return bodydataset




if __name__ == '__main__':

	try:
		# start the node
		handlandmarks_name = ["WRIST", "THUMB_CMC", "THUMB_MCP", "THUMB_IP", "THUMB_TIP",
			"INDEX_FINGER_MCP", "INDEX_FINGER_PIP", "INDEX_FINGER_DIP",
			"INDEX_FINGER_TIP", "MIDDLE_FINGER_MCP", "MIDDLE_FINGER_PIP",
			"MIDDLE_FINGER_DIP", "MIDDLE_FINGER_TIP", "RING_FINGER_MCP",
			"RING_FINGER_PIP", "RING_FINGER_DIP", "RING_FINGER_TIP", 
			"PINKY_MCP", "PINKY_PIP", "PINKY_DIP", "PINKY_TIP"]
		
		rospy.init_node("hand_keypoints", anonymous=False)
		rate = rospy.Rate(50)
		# create and spin the node
		pub_handpoints = rospy.Publisher("landmarks_topic", HandLandmarks,queue_size=10)
		rospy.Subscriber("/frame", Frame, callback)

		rospy.spin()

	except rospy.ROSInterruptException:
		pass


