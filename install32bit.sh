#!/bin/sh

(
##Information
echo "MCPi project use Shell and Python(?~ and zenity"

#pre zenity
echo Installing zenity ; sleep 1
sudo apt-get install -y zenity ; sleep 1

cd ${HOME}

echo "# Pre"
##zenity --progress --time-remaining --text='Install and Initalize MCPi \nIt only takes minutes \nPlease wait...'
echo "5"
mkdir MCPi
echo "10"
mkdir .minecraft
mkdir Minecraft

echo "# Pre 2"
cd ${HOME}/Minecraft

####Downloading MCPi Core from GITHUB's Repository -Nope
echo "# Downloading Minecraft Official Lancher"
sudo wget https://launcher.mojang.com/v1/objects/eabbff5ff8e21250e33670924a0c5e38f47c840b/launcher.jar
echo "15"

echo "# Install and Initalize mesa-utils"
sudo apt-get install -y mesa-utils
echo "20"

cd ${HOME}/MCPi

echo "# Downloading oracle java8 not using repo"
if [ ! -f jdk-8u241-linux-arm32-vfp-hflt.tar.gz ]; then
    wget https://www.dropbox.com/s/h6smy7w7dsikdis/jdk-8u241-linux-arm32-vfp-hflt.tar.gz
fi
echo "25"

echo "# Extract"
sudo tar -zxf jdk-8u241-linux-arm32-vfp-hflt.tar.gz -C /opt/jdk

echo "# Installing oracle java8 using repo"
sudo apt-get install openjdk-8-jdk

echo "# Pre lwjgl3arm32"
if [ ! -d ~/lwjgl3arm32 ]; then
    mkdir ~/lwjgl3arm32
fi

echo "# install Minecraft Server 1.15.2"
mkdir MinecraftServer
sudo wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar
java 
echo "35"

echo "# change GPU memory"
sudo bash -c "echo gpu_mem=248>> /boot/config.txt"
sudo sed -i -e "s/^gpu_mem=.*/gpu_mem=248/g" /boot/config.txt


)  |
zenity --progress \
	--time-remaining --text='Install and Initalize MCPi \nIt only takes minutes \nPlease Wait...\n' --auto-kill --percentage=0

if [ "$?" = -1 ] ; then
        zenity --error \
	--text="Setting canceled"
          #--text="Error Occured \nBut Don't give up \nLet's try again."
fi
