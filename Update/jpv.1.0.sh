#!/bin/bash

echo "アップデート中です"
echo "最新バージョンか確認しています"
wget -O latest.txt https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/Python-Latest/Update/LatestVersion.txt
latest_ver=$(cat latest.txt)
if [ "$latest_ver" = "v.1.0" ]; then
    echo "最新バージョンです。アップデートを続行します。"
    new_ver="v.1.0"
    fi
else
    echo "最新バージョンではありません。最新バージョンをインストールします。"
    wget -O Latest.sh https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/Latest/Update/Latest.sh
    ./Latest.sh
    fi

echo "Pythonをインストールしています"
sudo apt-get update && sudo apt-get reinstall -y python-3.8
echo "MCRPi.pyを再ダウンロードしています"
sudo rm MCRPi.py
wget -O MCRPi.py https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/Python-v.1.0/jp/GUI/MCRPi.py
echo "ゲームモニターを再ダウンロードしています"
wget -O GameMonitor.py https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/Python-v.1.0/Utility/${lang}/GameMonitor.py
echo "アップデートに間違いがないかチェックしています"
echo "チェック中-MCRPi.py"
Mver=${cat MCRPi.py.version}
if [ "$Mver" = "$new_ver" ]; then
    echo "[OK] MCRPi.py"
    fi
else
    echo "[Fail] MCRPi.py"
    echo "バージョンが、$Mverです。$new_verへ、最ダウンロードします。"
    fi
