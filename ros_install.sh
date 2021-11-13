#!/usr/bin/env bash

# Running this file installs ros and everything you need to get started on a system that has not yet installed ros-melodic. 
# Made by Adon Sharp

# Checks sudo perms needed for installing libraries, editing files and changing passwords
if [[ "$(id -u)" != 0 ]]
  then echo "Please run as root"
  exit
fi

# Pings google. if google breaks, we don't have access to start a new camera, sorry. Needs the internet and
# this was the best way I could think of. If you have a better way to for it
# TODO
if [[ "$(echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1)" == 0 ]]; then
    echo "Please connect to the internet to install libraries"
    exit
fi

sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

dpkg -l curl || apt install curl -y # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -

apt update -y
apt install ros-melodic-ros-base -y

echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential -y

rosdep init
rosdep update
