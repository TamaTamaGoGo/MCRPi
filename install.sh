#!/bin/sh

(
##Information
echo "MCPi project use Shell and Python(?~ and zenity"

#pre zenity
echo Installing zenity ; sleep 1
sudo apt-get install -y zenity ; sleep 1

cd ${HOME}

#Pre
##zenity --progress --time-remaining --text='Install and Initalize MCPi \nIt only takes minutes \nPlease wait...'
echo "5"
mkdir MCPi
echo "10"
mkdir .minecraft
mkdir Minecraft

#Pre 2
cd ${HOME}/Minecraft

####Downloading MCPi Core from GITHUB's Repository -Nope
#Downloading Minecraft Official Lancher
sudo wget https://launcher.mojang.com/v1/objects/eabbff5ff8e21250e33670924a0c5e38f47c840b/launcher.jar
echo "15"

##Install and Initalize mesa-utils
sudo apt-get install -y mesa-utils
echo "20"

#Downloading 



)  |
zenity --progress \
	--time-remaining --text='Install and Initalize MCPi \nIt only takes minutes \nPlease Wait...\n' --auto-kill --percentage=0

if [ "$?" = -1 ] ; then
        zenity --error \
          --text="Error Occured \nBut Don't give up \nLet's try again."
fi
