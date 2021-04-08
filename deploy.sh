#!/bin/bash
#####
#########################
sudo apt-get install rsync -y
if [ -d build/ ]; then
	#statements
	echo "Build directory already exist"
	rm -rf build/
	echo "deleting /build"
	echo "Copy...."
	mkdir build & sudo rsync -av --progress . ./build/ --exclude build/ --exclude .circleci/ --exclude .gitignore --exclude .git --exclude deploy.sh
	ls -altr build/
else
	echo "Build directory doesn't exist creating..."
	echo "Copy...."
    mkdir build & sudo rsync -av --progress . ./build/ --exclude build/ --exclude .circleci/ --exclude .gitignore --exclude .git --exclude deploy.sh
	ls -altr build/
fi
echo "deploy.sh finished"