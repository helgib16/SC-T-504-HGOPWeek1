#!/bin/bash
# Basic bash script with walkthrough of installation 
# of a text editor and git

ts=$(date +%s%N);
echo "$(date +%d.%m.%Y-%T)";
echo "Welcome $USER";
echo "this program will install git and sublime text editor";
echo "System running: ";
uname -a;
echo "are you sure you want to continue y/n?"
read input;
if [ "$input" = "y" ];
	then 
	echo "Installing git..."
	installGit() {
		sudo apt-get install git;
	}
#	git --version
	#if [ installGit () ]
	#	then
	#	1>"logfile.txt";
	#	echo "Successfully installed git"
	#else
	#	2>"errorfile.txt";
	#	echo "Failed to install git, for more information check errorfile.txt"
	#fi
	#echo "Installing sublime text editor 3..."
	installSublime(){
		sudo add-apt-repository ppa:webupd8team/sublime-text-3 &&
		sudo apt-get update &&
		sudo apt-get install sublime-text-installer;
	}
	#if [ installSublime () ]
	#then 
	#	1>"logfile.txt";
	#	echo "Successfully installed Sublime";
	#else 
	#	2>"errorfile.txt";
	#	echo "Failed to install Sublime, for more information check errorfile.txt";
#	if [ sudo add-apt-repository ppa:webupd8team/sublime-text-3 && \
#		sudo apt-get update && \
#		sudo apt-get install sublime-text-installer ]; then
#		echo "All apps installed";
	

#	else
#		echo "Installing encountered an error"
#	fi

fi

tt=$((($(date +%s%N) - $ts)/1000000))
echo "Time to execute: $tt milliseconds";