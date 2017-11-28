#!/bin/bash
# Basic bash script with walkthrough of installation 
# of a text editor and git


#Function to get timestamp (Day.Month.Year-Time) for various purposes.
getTimeStamp (){
	echo "$(date +%d.%m.%Y-%T)";
};
#Local variable for time (used to compute runningtime)
ts=$(date +%s%N);
getTimeStamp;

#Create variables for logfiles
	INSTALLLOG="Script-Success.log";
	ERRORLOG="Script-Error.log";

#Remove function for successfile (remove if exists)
removeSuccessLog(){
	if [ -e $INSTALLLOG ]; then
		rm $INSTALLLOG;
	fi
}
#Short welcome message and explanation for user running the script
echo "Welcome $USER";
echo "this script will install git and sublime text editor";
echo "System running: ";
uname -a;
echo "are you sure you want to continue y/n?"
read input;
if [ "$input" = "y" ]; then 

	echo "Installing git..."
	#Installation instructions for git, logged with timestamp upon success,
	#else (or) log an error with timestamp to the errorlog and exits.
	sudo apt-get install git -y && echo "$(getTimeStamp) - Successfully installed git." >> $INSTALLLOG ||  ( echo "$(getTimeStamp) - Encountered an error while installing git" >> $ERRORLOG; exit 1; );

	echo "Installing sublime text editor 3...";
	#Installation iinstructions for sublime text editor, logged with timestamp upon success,
	#else (or) log an error with timestamp to the errorlog and exits.
	sudo add-apt-repository ppa:webupd8team/sublime-text-3 && sudo apt-get update && sudo apt-get install sublime-text-installer -y && echo "$(getTimeStamp) - Successfully installed Sublime" >> $INSTALLLOG || ( echo "$(getTimeStamp) - Encountered an error while installing sublime" >> $ERRORLOG; $(removeSuccessLog); exit 1; );
else 
	echo "Aww, too bad, was looking forward to this.";
fi;
	
#compute runtime and print.
getTimeStamp;
tt=$((($(date +%s%N) - $ts)/1000000));
echo "Time to execute: $tt milliseconds";