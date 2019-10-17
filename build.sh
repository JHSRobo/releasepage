#!/bin/bash

cd /home/jhsrobo/Github

rm -rf ./ROVMIND

git clone https://github.com/JHSRobo/ROVMIND.git

cd /home/jhsrobo/Github/ROVMIND/ros_workspace/src/
rm -rf bmp280 bno055 copilot-page copilot_interface doc hardware_interface keyboard-teleop ms5837 raspicam_node realsense2_description rov_control rov_control_interface rov_description sen10972 sensor_readout sht31 tcu_board_msgs tcu_touchscreen vector_drive
git clone https://github.com/JHSRobo/bmp280.git
git clone https://github.com/JHSRobo/bno055.git
git clone https://github.com/JHSRobo/copilot-page.git
git clone https://github.com/JHSRobo/copilot_interface.git
git clone https://github.com/JHSRobo/doc.git
git clone https://github.com/JHSRobo/hardware_interface.git
git clone https://github.com/JHSRobo/keyboard-teleop.git
git clone https://github.com/JHSRobo/ms5837.git
git clone https://github.com/JHSRobo/raspicam_node.git
git clone https://github.com/JHSRobo/realsense2_description.git
git clone https://github.com/JHSRobo/rov_control.git
git clone https://github.com/JHSRobo/rov_control_interface.git
git clone https://github.com/JHSRobo/rov_description.git
git clone https://github.com/JHSRobo/sen10972.git
git clone https://github.com/JHSRobo/sensor_readout.git
git clone https://github.com/JHSRobo/sht31.git
git clone https://github.com/JHSRobo/tcu_board_msgs.git
git clone https://github.com/JHSRobo/tcu_touchscreen.git
git clone https://github.com/JHSRobo/vector_drive.git

cd /home/jhsrobo/Github/ROVMIND/ros_workspace

rosdep install --from-paths src --ignore-src -r -y

catkin_make -DCATKIN_BLACKLIST_PACKAGES="raspicam_node"
