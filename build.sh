#!/bin/bash

cd ~/Github

rm -rf ./ROVMIND
rm -rf ./RPICamera

git clone --branch V0.5 https://github.com/JHSRobo/ROVMIND.git
git clone --branch V0.3 https://github.com/JHSRobo/RPICamera.git

mv ~/Github/RPICamera/camera_viewer/ ~/Github/ROVMIND/ros_workspace/src/

cd ~/Github/ROVMIND/ros_workspace/src/
git clone --branch V0.1 https://github.com/JHSRobo/bmp280.git
# git clone --branch V0.0 https://github.com/JHSRobo/depth_hold.git
git clone --branch V0.2 https://github.com/JHSRobo/bno055.git
git clone --branch V1.0 https://github.com/JHSRobo/copilot_page.git
git clone --branch V0.0 https://github.com/JHSRobo/copilot_interface.git
git clone --branch V0.0 https://github.com/JHSRobo/doc.git
git clone --branch V0.1 https://github.com/JHSRobo/hardware_interface.git
# git clone --branch V0.0 https://github.com/JHSRobo/keyboard-teleop.git
git clone --branch V0.1 https://github.com/JHSRobo/ms5837.git
# git clone --branch V0.0 https://github.com/JHSRobo/raspicam_node.git
# git clone --branch V0.0 https://github.com/JHSRobo/realsense2_description.git
git clone --branch V0.0 https://github.com/JHSRobo/rov_control.git
git clone --branch V0.1 https://github.com/JHSRobo/rov_control_interface.git
# git clone --branch V0.1 https://github.com/JHSRobo/rov_description.git
# git clone --branch V0.1 https://github.com/JHSRobo/sen10972.git
# git clone --branch V0.1 https://github.com/JHSRobo/sensor_readout.git
git clone --branch V0.1 https://github.com/JHSRobo/sht31.git
git clone --branch V0.0 https://github.com/JHSRobo/tcu_board_msgs.git
git clone --branch V0.0 https://github.com/JHSRobo/tcu_touchscreen.git
git clone --branch V0.0 https://github.com/JHSRobo/vector_drive.git

cd ~/Github/ROVMIND/ros_workspace

rosdep install --from-paths src --ignore-src -r -y

catkin_make

