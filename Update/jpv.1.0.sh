#!/bin/bash

echo "アップデート中です"
echo "最新バージョンか確認しています"
wget -O latest.txt https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/Python-Latest/Update/LatestVersion.txt
latest_ver=$(cat latest.txt)
if [ "$latest_ver" = "v.1.0" ]; then
  echo "最新バージョンです。アップデートを続行します。"
  new_ver="v.1.0"
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
wget -O GameMonitor.py https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/Python-v.1.0/Utilityjp/GameMonitor.py
echo "アップデートに間違いがないかチェックしています"
echo "チェック中-MCRPi.py"
Checkver=$(cat MCRPiNow.version)
if [ "$Checkver" = "$new_ver" ]; then
  echo "[OK] 最新のバージョンにアップデートされました"
else
  Failedfile=$(cat Failfile.txt)
  echo "[Fail] $Failedfile"
  echo "が、正しくインストールされていないようです"
  echo "$new_verへ、最ダウンロードします。"
fi
