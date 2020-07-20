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

You only need to run this command.

    sudo wget https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/Python-Latest/en/install
    sudo chmod +x install
    ./install
    
Wait for install...
    
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

I pretty offer to use miniupnpc.

You could easily install it with following this command.

    sudo apt-get install miniupnpc

(I offer to use Firewall ufw.

Minecraft Server requid 25565 server, so type

    sudo ufw enable 25565
    sudo ufw enable
    
)

I offer to initalize with commanding

    cd MinecraftServer && sudo wget https://github.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/raw/master/en/setup/minecraftserver.sh && sudo chmod +x minecraftserver.sh && ./minecraftserver.sh

# Now Developing!
Please support me!
