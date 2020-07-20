#!/bin/sh

(

##Information
echo "MCRPiは、Bash、Python、Tkinterを使用します"

#pre zenity
echo Installing python-3.8 ; sleep 1
sudo apt-get install -y python-3.8 ; sleep 1
dir=$PWD

echo "# $dirにディレクトリーを作成しています"
##zenity --progress --time-remaining --text='Install and Initalize MCPi \nIt only takes minutes \nPlease wait...'
cd "$dir"
echo "2"
mkdir MCRPi
sleep 1
echo "4"
mkdir .minecraft
sleep 1
echo "6"
mkdir Minecraft
sleep 1
echo "8"
mkdir jdk
sleep 1
echo "10"

echo "# GitHubからダウンロードスクリプトをダウンロードしています"
sudo wget https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/master/jp/download/download1.sh
sudo wget https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/master/jp/download/download2.sh
sudo wget https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/master/en/download/download3.sh
#cd Minecraft

####Downloading MCPi Core from GITHUB's Repository -Nope
echo "# Minecraftの公式ランチャーをダウンロードしています"
#lxterminal --working-directory=${dir}/Minecraft -e wget https://launcher.mojang.com/v1/objects/eabbff5ff8e21250e33670924a0c5e38f47c840b/launcher.jar 2>&1 | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Downloading at \2\/s, ETA \3/' | zenity --progress --auto-kill --title="Downloading File..." ; exit
sudo chmod +x download1.sh
./download1.sh
echo "15"


echo "# mesa-utilsをインストールしています"
sudo apt-get install -y mesa-utils
echo "20"

echo "# リポジトリーを使わずにJava 8をインストールしています"
if [ ! -f jdk-8u241-linux-arm32-vfp-hflt.tar.gz ]; then
#	lxterminal --working-directory=${dir}/jdk -e wget https://www.dropbox.com/s/h6smy7w7dsikdis/jdk-8u241-linux-arm32-vfp-hflt.tar.gz 2>&1 | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Downloading at \2\/s, ETA \3/' | zenity --progress --auto-kill --title="Downloading File..."
	sudo chmod +x download2.sh
	./download2.sh
fi

echo "25"

echo "# 展開しています"
sudo tar -zxf jdk-8u241-linux-arm32-vfp-hflt.tar.gz -C /jdk

#echo "# Installing oracle java8 using repo"
#sudo apt-get install openjdk-8-jdk

echo "# lwjgl3arm32を準備しています"
if [ ! -d ~/lwjgl3arm32 ]; then
    mkdir ~/lwjgl3arm32
fi
echo "30"

echo "# Minecraft Server 1.15.2をダウンロードしています"
mkdir MinecraftServer
#cd MinecraftServer
#lxterminal --working-directory=${dir}/MinecraftServer -e wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar 2>&1 | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Downloading at \2\/s, ETA \3/' | zenity --progress --auto-kill --title="Downloading File..."
#/jdk/jdk1.8.0_241/bin/java -Xmx500M -Xms500M -jar minecraft_server.1.15.2.jar nogui
sudo chmod +x download3.sh
./download3.sh
echo "35"


echo "# change GPU memory"
sudo bash -c "echo gpu_mem=248>> /boot/config.txt"
sudo sed -i -e "s/^gpu_mem=.*/gpu_mem=248/g" /boot/config.txt
echo "40"


)  |
zenity --progress \
	--time-remaining --text='Install and Initalize MCRPi \nIt only takes minutes \nPlease Wait...\n' --auto-kill --percentage=0 --title='install and Initalize MCRPi'

if [ "$?" = -1 ] ; then
        zenity --error \
	--text="Setting canceled"
          #--text="Error Occured \nBut Don't give up \nLet's try again."
fi
