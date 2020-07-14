#!/bin/bash

echo "アップデート中です"
echo "最新バージョンか確認しています"
if [ "$latest_ver" = "v.1.0" ]; then
    echo "最新バージョンです。アップデートを続行します。"
    new_ver="v.1.0"
    fi
else
    echo "最新バージョンではありません。再度最新バージョンをインストールします。"
    fi

echo "Pythonをインストールしています"
sudo apt-get update && sudo apt-get reinstall -y python-3.7
echo "MCRPi.pyを再ダウンロードしています"
wget -O MCRPi.py https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/Python-v.1.0/jp/GUI/MCRPi.py
echo "ゲームモニターを再ダウンロードしています"
wget -O GameMonitor.py https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/Python-v.1.0/Utility/${lang}/GameMonitor.py
echo "アップデートに間違いがないかチェックしています"
echo "MCRPi.py"
Mver=${cat MCRPi.py.version}
if [ "$Mver" = "$new_ver" ]; then
    echo "[OK] MCRPi.py"
    lang=jp
    fi
else
    echo "[Fail] MCRPi.py"
    lang=en
    fi
