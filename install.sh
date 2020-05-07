#!/bin/sh

(
##Information
echo "MCPi project use Shell and Python(?~ and zenity"

##pre zenity
echo Installing zenity ; sleep 1
sudo apt-get install -y zenity ; sleep 1

##Pre
#zenity --progress --time-remaining --text='Install and Initalize MCPi \nIt only takes minutes \nPlease wait...'
echo "5"
mkdir MCPi
echo "10"
mkdir .minecraft

##Pre 2
cd ${HOME}/MCPi

##Downloading MCPi Core from GITHUB's Repository
sudo wget 
echo "15"

##Install and Initalize mesa-utils
sudo apt-get install -y mesa-utils
echo "20"



)  |
zenity --progress \
	--time-remaining --text='Install and Initalize MCPi \nIt only takes minutes \nPlease Wait...\n' --auto-kill --percentage=0

if [ "$?" = -1 ] ; then
        zenity --error \
          --text="Error Occured \nBut Don't give up \nLet's try again."
fi
