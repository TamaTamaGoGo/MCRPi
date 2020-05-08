# MCPi---MineCraft-for-raspberryPi
Easy GUI application - Minecraft download and prepare 

This is script to RaspberryPi Rasbian Buster.

This application can download and prepare Minecraft.

Using zenity dialog.

Please see all of README.md

# MCPi Install
You can download and install with this command. 

You need to **change 32bit or 64bit to your Raspbian bit.**

Check typing


    uname -m

Usualy Raspbian Buster is armv7l, so32bit.

But when I use Raspbian Buster with installing Berry Boot, output was aarch64, so 64bit.

I think if you are using Sakaki's gentoo or raspbian-nspawn-64, chenge to 64bit.

    bit=32bit or 64bit
    sudo wget https://raw.githubusercontent.com/TamaTamaGoGo/MCPi---MineCraft-for-raspberryPi/master/install${bit}.sh
    sudo chmod +x install${bit}.sh
    ./install${bit}.sh
    
# Change Raspi Setting
you need to change your Raspi Setting.
At first type
    
    sudo raspi-config
    
This is Raspi Setting maneger with CUI.
Next go to Advanced Setting with push keyboard.
...

# Using Minecraft Server
At first, you need to read EULA.

After reading, change eula.txt, eula=false to eula=true


# Now Developing!
Please support me!
