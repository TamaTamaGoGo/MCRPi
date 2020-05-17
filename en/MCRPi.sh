#! /bin/sh

dir=`pwd`
echo '[OK] Boot MCRPi.sh'
chose=`zenity --list --radiolist --column=Selected --column "Menu" True "Start Minecraft Launcher" False "Update MCRPi" False "Change user infomation" False "Exit"`

if [ ${chose} = 'Start Minecraft Launcher' ]; then
  ${pwd}/
