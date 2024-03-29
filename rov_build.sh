#!/bin/bash

cd ~/Github

rm -rf ./ROVMIND
rm -rf ./RPICamera

git clone --branch V2.13 https://github.com/JHSRobo/ROVMIND.git
git clone --branch V3.11.2 https://github.com/JHSRobo/RPICamera.git

mv ~/Github/RPICamera/streamer/ ~/Github/
rm -rf ~/Github/RPICamera

cd ~/Github/ROVMIND/ros_workspace/src/
git clone --branch V1.20.5 https://github.com/JHSRobo/copilot_interface.git
git clone --branch V1.1 https://github.com/JHSRobo/hardware_interface.git
git clone --branch V0.6 https://github.com/JHSRobo/depth_sensor.git
git clone --branch V1.5.1 https://github.com/JHSRobo/rov_control_interface.git
git clone --branch V0.0 https://github.com/JHSRobo/tcu_board_msgs.git
git clone --branch V0.0 https://github.com/JHSRobo/vector_drive.git
git clone --branch V1.5 https://github.com/JHSRobo/gpio_control.git
git clone --branch V1.2 https://github.com/JHSRobo/drq_ros.git
git clone --branch V1.0 https://github.com/JHSRobo/pi_temp.git

cd ~/Github/ROVMIND/ros_workspace

rosdep install --from-paths src --ignore-src -r -y

catkin_make

source devel/setup.bash
