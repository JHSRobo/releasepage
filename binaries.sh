#!/bin/bash

echo "TCU or Pi?"

read version

cd ~/Github/ROVMIND/ros_workspace/

rm -rf build
rm -rf devel

if [$version = "TCU"]
then
	cp ~/Github/releasepage/current_version_tcu/build/ ./build/
	cp ~/Github/releasepage/current_version_tcu/devel/ ./devel/
fi

if [$version = "Pi"]
then
	cp ~/Github/releasepage/current_version_pi/build/ ./build/
        cp ~/Github/releasepage/current_version_pi/devel/ ./devel/
fi
