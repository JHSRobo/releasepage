#!/bin/bash

# Checks sudo perms
if [[ "$(id -u)" == 0 ]]
  then echo "Please don't run as root"
  exit
fi

cd ~/Github

cat ~/.bashrc | grep "cameras" || (echo "alias cameras=\"rosrun camera_viewer switcher.py\"" >> ~/.bashrc) # Add camera command
#cat ~/.bashrc | grep "topside" || (echo "alias topside=\"roslaunch launch_files topside.launch"" >> ~/.bashrc) # Add camera command

rm -rf ./ROVMIND
rm -rf ./RPICamera

git clone --branch V2.13 https://github.com/JHSRobo/ROVMIND.git
git clone --branch V3.10 https://github.com/JHSRobo/RPICamera.git

mv ~/Github/RPICamera/camera_viewer/ ~/Github/ROVMIND/ros_workspace/src/
rm -rf ~/Github/RPICamera

cd ~/Github/ROVMIND/ros_workspace/src/
git clone --branch V1.5 https://github.com/JHSRobo/gpio_control.git # necessary for the camera viewer
git clone --branch V1.9 https://github.com/JHSRobo/copilot_interface.git
git clone --branch V1.1 https://github.com/JHSRobo/hardware_interface.git
git clone --branch V3.6 https://github.com/JHSRobo/keyboard_teleop.git
git clone --branch V1.3 https://github.com/JHSRobo/rov_control_interface.git
git clone --branch V0.0 https://github.com/JHSRobo/tcu_board_msgs.git
git clone --branch V0.0 https://github.com/JHSRobo/vector_drive.git
git clone --branch V1.3 https://github.com/JHSRobo/depth_hold.git
git clone --branch V0.0 https://github.com/JHSRobo/thruster_tester.git

cd ~/Github/ROVMIND/ros_workspace

rosdep install --from-paths src --ignore-src -r -y

catkin_make

source devel/setup.bash
