#!/bin/bash

cd /home/jhsrobo/Github

git clone https://github.com/JHSRobo/ROVMIND.git

cd /home/jhsrobo/Github/ROVMIND/ros_workspace/src/
git clone https://github.com/JHSRobo/copilot-page.git

cd /home/jhsrobo/Github/ROVMIND/ros_workspace
catkin_make
