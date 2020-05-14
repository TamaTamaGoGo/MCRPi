#! /bin/sh

echo '[OK] Boot MCRPi.sh'
zenity --list --radiolist --column=Selected --column "ペット" True "Start Minecraft Launcher" False "Update MCRPi" False "Change user infomation" False "Exit"


user=$(zenity --forms --add-entry "ユーザー名" --add-password "パスワード" --separator ",")
#echo $user
username=$(awk -F, '{print $1}' <<<$user)
password=$(awk -F, '{print $2}' <<<$user)
