#!/bin/bash
rm Latestversion.txt
wget https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/Python-v.0.1/Update/jp/Latestverision.txt
Latestversion=$(cat Latestversion.txt)
Currentlyversion=$(cat Version.txt)
if [ "$Latestversion" = "$Currentlyversion" ]; then
    echo "MCRPi is already currentry version"
    fi
else
    echo "MCRPi is now Up to Date"
    fi
