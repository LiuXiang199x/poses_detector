# hand_gesture_skill

## Overview

ROS package for the hand_gesture_skill of the Social Robot Group. This package is designed to show how the hand gesture detector works. The user can choose between three minigames to play, each minigame has six rounds or six challenges. The user must answer showing the hand to the webcam. 

When you launch the package you will see the following menu:  

    --MENÚ DE JUEGO--  

    1. -CÁLCULO DACTILAR.
    2. -PIEDRA, PAPEL, TIJERA.
    3. -ACERTIJOS FÁCILES.
    4. -SALIR.  

1. **CÁLCULO DACTILAR:** This minigame consists on solving some easy equations. The robot will say the equations and the user must answer with the hand.
    - *For example:* the robot will say *"3+2="* and the user must show a *5* to the webcam, with the hand completly opened.  

2. **PIEDRA, PAPEL, TIJERA:** This minigame consists on playing a pseudo rock, paper, scissors. The robot will say one of this options and a rule that indicates if you have to win or lose.
    - *For example:* the robot will say  *"PAPEL (Tienes que perder)"* and the user must show *PIEDRA* to the webcam, with the fist.  

3. **ACERTIJOS FÁCILES:** This minigame consists on solving some easy questions. The robot will say the questions and the user must answer with the hand.
    - *For example:* the robot will say  *"En esta serie de números del 0 al 5, indica el número que falta: 0-1-2-4-5"* and the user must show *3* to the webcam, with the index, middle and ring fingers up.  

The minigames are prepared to have answers between *0* and *5*, so the answer is done with only one hand and just modifying the position of the fingers:  

  - For minigames 1 and 3: 
    - *0* = fist
    - *1* = index up
    - *2* = index and middle up
    - *3* = index, middle and ring up
    - *4* = index, middle, ring and pinky up
    - *5* = all fingers up

  - For minigame 2:
    - *piedra* = fist
    - *tijeras* = index and middle up
    - *papel* = all fingers up


## Run

The system can be launched via `roslaunch` using the folowing commands.

```
roslaunch hand_gesture_skill hand_gesture_skill.launch
```

## ROS API

### hand_gesture_skill node

This node shows the menu for playing the minigames and executes them, comunicates ROS and the hand detector (Mediapipe) and executes the hand gestures detector node (in Mediapipe).

#### Published Topics

`mediapipeON_topic` (*std_msgs/Empty*)

   - To execute hand gesture detector (mediapipe).

`mediapipeOFF_topic` (*std_msgs/Empty*)

   - To close hand gesture detector (mediapipe).

`hri_manager/ca_activations` (*interaction_msgs/CA*)

   - To send CAs to the *hri_manager*.

#### Subscribed Topics

`hri_manager/response` (*interaction_msgs/CaResult*)

   - To get the answer of the *hri_manager*.

`hand_gesture` (*hand_gesture_msgs/HandGesture*)

   - To get the hand gesture.

#### Actions

`HandGesture` (*action/HandGesture*)

   - This action has the goal, feedback and result for actionlib server-client communications.


## LICENSE

La UC3M es titular en exclusiva de los derechos de propiedad intelectual de dicho software, y acepta que el software se proporcione para uso exclusivo dentro de las tareas académicas, y su usuario no está por tanto autorizado a ningún otro uso indebido ajeno, entre estos, a título enunciativo pero no limitativo, a realizar ninguna reproducción, fijación, distribución, comunicación pública, ingeniería inversa, ni transformación sobre dicho software, siendo el propio usuario el responsable de cualquier uso indebido y de las consecuencias que pudieran derivarse de sus actos.

The UC3M is the exclusive owner of the intellectual property rights of this software, and accepts that the software is provided for exclusive use within the academic tasks, and its user is therefore not authorized to any other unauthorized use, among these, for example, but not limited to, make any reproduction, fixation, distribution, public communication, reverse engineering, or transformation on said software, being the user himself responsible for any misuse and the consequences that may arise from their actions.

## ACKNOWLEDGEMENTS

![RoboticsLab](http://ieee.uc3m.es/images/thumb/b/b6/Roboticslab_text_new.jpg/128px-Roboticslab_text_new.jpg)
![UC3M](http://ieee.uc3m.es/images/thumb/6/6b/Logo_uc3m_letras.png/256px-Logo_uc3m_letras.png)
