#!/bin/bash
# Basic bash script with walkthrough of installation 
# of a text editor and git
#timestamp(){
#	date +"%T";
#}
ts=$(date +%s%N);
echo "$(date +%d.%m.%Y-%T)";
echo "Welcome $USER";
echo "this program will guide you through the installation of a few prerequisites for the course SC-T-504-HGOP";
echo "System running: ";
uname -a;
echo "are you sure you want to continue y/n?"
read input;
if [ "$input" = "y" ];
	then 
	echo "Installing git..."
#	git --version
	sudo apt-get install git
	echo "Installing sublime text editor 3..."

	sudo add-apt-repository ppa:webupd8team/sublime-text-3 && \
	sudo apt-get update && \
	sudo apt-get install sublime-text-installer
fi

tt=$((($(date +%s%N) - $ts)/1000000))
echo "Time to execute: $tt milliseconds";