# MCRPi---MineCraft-for-RaspberryPi

Easy GUI application - Minecraft download and prepare 

This is script to RaspberryPi Rasbian but I think it will work on linux too...

This application can download and prepare Minecraft.

You can install Minecraft Server too!

Using zenity dialog.

**Please see all of README.md**

# MCRPi Install
Don't put MCRPi to **folder named with using blank**    example  **X** MCR Pi -> **O** MCRPi

MCRPi's install's script will get lost where the file is.

You can download and install with this command. 

You need to **change 32bit or 64bit to your Raspbian bit.**

Check typing


    uname -m

Usualy Raspbian Buster is armv7l, so32bit.

But when I use Raspbian Buster with installing Berry Boot, output was aarch64, so 64bit.

I think if you are using Sakaki's gentoo or raspbian-nspawn-64, chenge to 64bit.

    bit=32bit or 64bit
    

    sudo wget https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/master/en/install${bit}.sh
    sudo chmod +x install${bit}.sh
    ./install${bit}.sh
    
    
# Change Raspi Setting
you need to change your Raspi Setting.
At first type
    
    sudo raspi-config
    
This is Raspi Setting maneger with CUI.

Next go to Advanced Setting with push keyboard.

And enable GL (Fake KMS).

Reboot.

# Using Minecraft Server
At first, you need to read EULA.

After reading, change eula.txt, eula=false to eula=true

You should open your port.

I offer to initalize with commanding

    cd MinecraftServer && sudo wget https://github.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/raw/master/en/setup/minecraftserver.sh && sudo chmod +x minecraftserver.sh && ./minecraftserver.sh

# Now Developing!
Please support me!
