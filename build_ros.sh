#!/bin/bash

pytorch_path=$1
if [ "$pytorch_path" = "" ]; then
    echo "*************************************************"
    echo "Input the pytorch path, e.g: "YOUR_PATH/pytorch/torch/share/cmake/Torch
    echo "*************************************************"
    exit
fi

echo "Building ROS nodes"

cd ROS_example/GCNv2_SLAM
mkdir build
cd build
cmake .. -DROS_BUILD_TYPE=Release -DTORCH_PATH=$pytorch_path
make -j
