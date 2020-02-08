#!/bin/bash

cd ~/Github

rm -rf ./ROVMIND
rm -rf ./RPICamera

git clone https://github.com/JHSRobo/ROVMIND.git
git clone https://github.com/JHSRobo/RPICamera.git

mv ~/Github/RPICamera/camera_viewer/ ~/Github/ROVMIND/ros_workspace/src/

cd ~/Github/ROVMIND/ros_workspace/src/
git clone https://github.com/JHSRobo/bmp280.git
git clone https://github.com/JHSRobo/bno055.git
git clone https://github.com/JHSRobo/copilot_page.git
git clone https://github.com/JHSRobo/copilot_interface.git
git clone https://github.com/JHSRobo/doc.git
git clone https://github.com/JHSRobo/hardware_interface.git
git clone https://github.com/JHSRobo/ms5837.git
git clone https://github.com/JHSRobo/rov_control.git
git clone https://github.com/JHSRobo/rov_control_interface.git
git clone https://github.com/JHSRobo/rov_description.git
git clone https://github.com/JHSRobo/sht31.git
git clone https://github.com/JHSRobo/tcu_board_msgs.git
git clone https://github.com/JHSRobo/tcu_touchscreen.git
git clone https://github.com/JHSRobo/vector_drive.git
git clone https://github.com/IntelRealSense/realsense-ros.git
git clone https://github.com/JHSRobo/rov_localization.git
git clone https://github.com/JHSRobo/motion_pids.git

cd ~/Github/ROVMIND/ros_workspace

rosdep install --from-paths src --ignore-src -r -y

catkin_make
