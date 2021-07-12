#!/bin/bash

# ros example for mono
GCNv2_path=$(cd "$(dirname "$0")";pwd)
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:$GCNv2_path/ROS_example

cd ROS_example/GCNv2_SLAM

# 640x480 resolution example
FULL_RESOLUTION=1 GCN_PATH=gcn2_640x480.pt ./Mono ../../Vocabulary/GCNvoc.bin config/self_config.yaml

