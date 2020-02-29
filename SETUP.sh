#!/bin/sh
#echo -n 'Enter your directory to download> '
#read DIR
#echo $DIR

echo 'Progress 1/3   ******------------'
echo 'starting Setting MCPi'
sudo su
apt-get -y install python3

echo 'Progress 2/3   ************------'
echo 'Downloading and preparing SetupMCPi.py'
wget https://github.com/TamaTamaGoGo/MCPi---MineCraft-for-raspberryPi/blob/master/Setup/SetupMCPi.py
sudo chmod 777 SetupMCPi.py

echo 'Progress 3/3   ****************'
echo 'Running SetupMCPi.py'
