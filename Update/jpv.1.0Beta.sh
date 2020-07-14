#!/bin/bash

echo "アップデート中です"
echo "Pythonをインストールしています"
sudo apt-get update && sudo apt-get reinstall -y python-3.7
echo "MCRPi.pyを再ダウンロードしています"
wget -O MCRPi.py https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/Python-v.1.0/jp/GUI/MCRPi.py
echo "ゲームモニターを再ダウンロードしています"
wget -O GameMonitor.py https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/Python-v.1.0/Utility/${lang}/GameMonitor.py
echo "アップデートに間違いがないかチェックしています"
echo "MCRPi.py"
MCRPipythonver=${cat MCRPi.py.version}
