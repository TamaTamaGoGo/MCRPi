# MCPi---MineCraft-for-raspberryPi
Easy GUI application - Minecraft download and prepare 

This is script to RaspberryPi Rasbian Buster.

This application can download and prepare Minecraft.

Using zenity dialog.

# MCPi Install
You can download and install with this command. 
You need to change 32bit or 64bit to your Raspbian bit.
Check typing


    uname -m

Usualy Raspbian Buster is armv7l, so32bit.
But when I use Raspbian Buster with installing Berry Boot, output was aarch64, so 64bit.

    bit=32bit or 64bit
    sudo wget https://raw.githubusercontent.com/TamaTamaGoGo/MCPi---MineCraft-for-raspberryPi/master/install${bit}.sh
    sudo chmod +x install${bit}.sh
    ./install${bit}.sh
    

Now Developing!
Please support me!
