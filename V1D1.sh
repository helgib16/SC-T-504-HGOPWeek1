#!/bin/bash
# Basic bash script with walkthrough of installation 
# of a text editor and git
getTimeStamp (){
	echo "$(date +%d.%m.%Y-%T)";
};
ts=$(date +%s%N);
getTimeStamp;
echo "Welcome $USER";
echo "this program will install git and sublime text editor";
echo "System running: ";
uname -a;
echo "are you sure you want to continue y/n?"
read input;
if [ "$input" = "y" ]; then 
	INSTALLLOG="Script-Success.log";
	ERRORLOG="Script-Error.log";
	echo "Installing git..."
	sudo apt-get install git -y && echo "$(getTimeStamp) - Successfully installed git." >> $INSTALLLOG ||  ( echo "$(getTimeStamp) - Encountered an error while installing git" >> $ERRORLOG; exit 1; );

	echo "Installing sublime text editor 3..."
	sudo add-apt-repository ppa:webupd8team/sublime-text-3 && sudo apt-get update && sudo apt-get install sublime-text-installer -y && echo "$(getTimeStamp) - Successfully installed Sublime" >> $INSTALLLOG || ( echo "$(getTimeStamp) - Encountered an error while installing sublime" >> $ERRORLOG;  exit 1; );
fi;
	
tt=$((($(date +%s%N) - $ts)/1000000));
echo "Time to execute: $tt milliseconds";