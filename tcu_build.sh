#!/bin/bash

# Checks sudo perms
if [[ "$(id -u)" == 0 ]]
  then echo "Please don't run as root"
  exit
fi

cd ~/Github

sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

dpkg -l curl || apt install curl -y # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -

apt update -y
apt install ros-noetic-ros-base -y

echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
echo "source ~/GIthub/ROVMIND/ros_workspace/devel/setup.bash" >> ~/.bashrc
echo "export ROS_MASTER_URI=http://master:11311" >> ~/.bashrc
echo "alias cameras=\"rosrun camera_viewer switcher.py\"" >> ~/.bashrc
echo "export ROS_HOSTNAME=master" >> ~/.bashrc
echo "alias topside=\"cd ~/Github/ROVMIND/ros_workspace && roslaunch launch_files topside.launch\"" >> ~/.bashrc # Add camera command
source ~/.bashrc

apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential -y

rosdep init
rosdep update

git clone --branch V2.13 https://github.com/JHSRobo/ROVMIND.git

cd ~/Github/ROVMIND/ros_workspace/src/
git clone https://github.com/JHSRobo/RPICamera.git
git clone https://github.com/JHSRobo/gpio_control.git # necessary for the camera viewer
git clone https://github.com/JHSRobo/copilot_interface.git
git clone https://github.com/JHSRobo/hardware_interface.git
git clone https://github.com/JHSRobo/keyboard_teleop.git
git clone https://github.com/JHSRobo/rov_control_interface.git
git clone https://github.com/JHSRobo/vector_drive.git
git clone https://github.com/JHSRobo/tcu_board_msgs.git
git clone https://github.com/JHSRobo/RPICamera.git

cd ~/Github/ROVMIND/ros_workspace

rosdep install --from-paths src --ignore-src -r -y

catkin_make

source devel/setup.bash
