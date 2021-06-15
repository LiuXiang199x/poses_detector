/**
 * @file        hand_gesture_skill_main.cpp
 * @brief       Main of the node.
 *
 * @author      Alicia Rodríguez Mogollón
 * @date        20xx-xx
 * @supervisor  Juan José Gamboa Montero <jgamboa@ing.uc3m.es>
 * @date        20xx-xx
 *
 * @copyright   Copyright (C) 2015 University Carlos III of Madrid.
 *              All rights reserved.
 * @license     LEUC3M v1.0, see LICENSE.txt
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the Licencia Educativa UC3M as published by
 * the University Carlos III of Madrid, either version 1.0, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY. See the Licencia Educativa UC3M
 * version 1.0 or any later version for more details.
 *
 * A copy of the Licencia Educativa UC3M is in the LICENSE file.
 */

#include "hand_gesture_skill/hand_gesture_skill.h"

//==================================================

//==================================================


/**
* Main function of hand_gesture_skill.
*/
int main(int argc, char **argv){
	
	ros::init (argc, argv, SKILL_NAME);

	ROS_INFO("hand_gesture_skill creado y registrado");
	
	HandGestureSkill skill;
	
	ros::spin();

	return 0;
}