# hand_gesture_interface

## Overview

ROS package for the projects_utils of the Social Robot Group. This package is designed to be an intermediary for receiving and sending information about the position of hand's knuckles. The position is obtained from the hand detector (MediaPipe) and that info is used to assing a determined hand gesture depending on the hand position. The specific gesture is sent to a ROS topic so that anyone can use it in other projects. The obtaining of the landmarks is done in **mediapipe _interface node** and the classification of the gestures in **hand _gesture _interface node**.

## Run

The system can be launched via `roslaunch` using the following command.

```
roslaunch hand_gesture_interface hand_gesture_interface.launch
```

## ROS API

### mediapipe_interface node

This node controls the communication with the hand detector (MediaPipe) and it is responsible of sending hand landmarks info (number, name and position) in a message of type *Landmark.msg*. This node has a main function **start()** to control the flow of reciving info from the detector (MediaPipe) and for sending that info to a topic. The first task is done in the method **getMediapipeInfo()** and the second one in **sendLandmarksInfo()**. 
* However, at the moment there is a problem with getting the info from the hand detector (MediaPipe) and these methods are commented. To show that the landmarks' info is sending correctly, there is a function called **sendLandmarksInfo_Test()**, that send always the position of the landmarks to obtain a *three* as result.

#### Published Topics

`landmarks_topic`(*hand_gesture_msgs/HandLandmarks*)

   - To send the 21 landmarks corresponding with the knuckles of the hand. The info corresponding to each landmark: a number, a name and two coordinates of its position.

#### Subscribed Topics

`mediapipeOFF_topic`(*std_msgs/Empty*)

   - To close hand gesture detector (MediaPipe).


### mediapipe_ON node

This node allow to turn on the hand gesture detector (MediaPipe). 

#### Subscribed Topics

`mediapipeON_topic`(*std_msgs/Empty*)

   - To execute hand gesture detector (MediaPipe).


### hand_gesture_interface node

This node gets the info of the hand landmarks that had been published in *landmarks_topic*. Comparing the coordinates of each landmark, a determined gesture is assigned to specific hand positions. The information of landmarks is getting in the method **getLandmarksInfo(...)**, the comparison of the position of each landmark's coordinates is done in  **assignGestures()** and the already recognized gesture is sent to a ROS topic in **sendGestureInfo()**. This process is run sequentially, once the landmarks information is received, the gesture is assigned and finally, it is sent to the topic *hand_gesture*. Then, any ROS node can obtain that info/gesture and use it. 

#### Published Topics

`hand_gesture`(*hand_gesture_msgs/HandGesture*)

   - To send the gesture info: name and number.

#### Subscribed Topics

`landmarks_topic`(*hand_gesture_msgs/HandLandmarks*)

   - To obtain the position of each landmarks for comparing them to get a certain gesture.


## LICENSE

La UC3M es titular en exclusiva de los derechos de propiedad intelectual de dicho software, y acepta que el software se proporcione para uso exclusivo dentro de las tareas académicas, y su usuario no está por tanto autorizado a ningún otro uso indebido ajeno, entre estos, a título enunciativo pero no limitativo, a realizar ninguna reproducción, fijación, distribución, comunicación pública, ingeniería inversa, ni transformación sobre dicho software, siendo el propio usuario el responsable de cualquier uso indebido y de las consecuencias que pudieran derivarse de sus actos.

The UC3M is the exclusive owner of the intellectual property rights of this software, and accepts that the software is provided for exclusive use within the academic tasks, and its user is therefore not authorized to any other unauthorized use, among these, for example, but not limited to, make any reproduction, fixation, distribution, public communication, reverse engineering, or transformation on said software, being the user himself responsible for any misuse and the consequences that may arise from their actions.

## ACKNOWLEDGEMENTS

![RoboticsLab](http://ieee.uc3m.es/images/thumb/b/b6/Roboticslab_text_new.jpg/128px-Roboticslab_text_new.jpg)
![UC3M](http://ieee.uc3m.es/images/thumb/6/6b/Logo_uc3m_letras.png/256px-Logo_uc3m_letras.png)
