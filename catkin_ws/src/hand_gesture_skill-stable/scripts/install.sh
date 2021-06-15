#!/bin/sh
# External, ROS and system package dependencies
 
cd /tmp
git clone git@asimov.uc3m.es:third_parties/mediapipe_sr.git
cd mediapipe_sr
sudo sh install.sh
cd ..
rm -rf asr
