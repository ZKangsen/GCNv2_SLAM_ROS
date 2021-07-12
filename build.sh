echo "Configuring and building Thirdparty/DBoW2 ..."

cd Thirdparty/DBoW2
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4

cd ../../g2o

echo "Configuring and building Thirdparty/g2o ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4

cd ../../../

echo "Configuring and building ORB_SLAM2 ..."

cd Vocabulary
tar -xjf voc.tar.bz2
cd ..

pytorch_path=$1
if [ "$pytorch_path" = "" ]; then
    echo "*************************************************"
    echo "Input the pytorch path, e.g: "YOUR_PATH/pytorch/torch/share/cmake/Torch
    echo "*************************************************"
    exit
fi
sudo mkdir build
cd build
sudo cmake .. -DCMAKE_BUILD_TYPE=Release -DTORCH_PATH=$pytorch_path
sudo make -j4
