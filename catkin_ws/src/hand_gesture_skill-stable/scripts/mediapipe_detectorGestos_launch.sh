#!/bin/bash

# just print this out
echo "Compilar y lanzar Mediapipe:"

cd ~/mediapipe
#cd ~/Software/mediapipe_v0.7.7
#cd ~/Software/mediapipe_sr
#echo COMPILANDO...

#bazel build -c opt --define MEDIAPIPE_DISABLE_GPU=1     mediapipe/examples/desktop/detector_gestos:detector_gestos_cpu

echo LANZANDO...    

GLOG_logtostderr=1 bazel-bin/mediapipe/examples/desktop/detector_gestos/detector_gestos_cpu \
    --calculator_graph_config_file=mediapipe/graphs/detector_gestos/detector_gestos_desktop_cpu.pbtxt
# exit gracefully by returning a status
exit 0