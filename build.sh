#!/bin/bash

cd /home/jhsrobo/Github

rm -rf ./ROVMIND

git clone https://github.com/JHSRobo/ROVMIND.git

cd /home/jhsrobo/Github/ROVMIND/ros_workspace/src/
git clone https://github.com/JHSRobo/copilot-page.git

cd /home/jhsrobo/Github/ROVMIND/ros_workspace

rosdep install --from-paths src --ignore-src -r -y

catkin_make -DCATKIN_BLACKLIST_PACKAGES="raspicam_node"
