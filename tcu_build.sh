#!/bin/bash

# Checks sudo perms
if [[ "$(id -u)" == 0 ]]
  then echo "Please don't run as root"
  exit
fi

cd ~/Github

cat ~/.bashrc | grep "cameras" || (echo "alias cameras=\"rosrun camera_viewer switcher.py\"" >> ~/.bashrc) # Add camera command

rm -rf ./ROVMIND

git clone --branch V2.13 https://github.com/JHSRobo/ROVMIND.git

cd ~/Github/ROVMIND/ros_workspace/src/
git clone https://github.com/JHSRobo/RPICamera.git
git clone https://github.com/JHSRobo/gpio_control.git # necessary for the camera viewer
git clone https://github.com/JHSRobo/copilot_interface.git
git clone https://github.com/JHSRobo/keyboard_teleop.git
git clone https://github.com/JHSRobo/rov_control_interface.git
git clone https://github.com/JHSRobo/tcu_board_msgs.git

cd ~/Github/ROVMIND/ros_workspace

rosdep install --from-paths src --ignore-src -r -y

catkin_make

source devel/setup.bash
