# MCRPi --- MineCraft-for-RaspberryPi

このページを表示したい場合は、このURLにジャンプしてください。日本語 https://translate.google.co.jp/translate?hl=ja&sl=en&tl=ja&u=https%3A%2F%2Fgithub.com%2FTamaTamaGoGo%2FMCRPi --- MineCraft-for-RaspberryPi％2Fblob％2Fmaster％2FREADME.md

簡単なGUIアプリケーション-Minecraftのダウンロードと準備

これはRaspberryPi Rasbianへのスクリプトですが、Linuxでも動作すると思います...

このアプリケーションは、Minecraftをダウンロードして準備できます。

Minecraftサーバーもインストールできます！

zenityダイアログを使用する。

README.mdをすべて参照してください

# MCRPiインストール

空白の 例 を使用して名前が付けられたフォルダにMCRPiを配置しないでくださいX MCR Pi- > O MCRPi

MCRPiのインストールスクリプトは、ファイルの場所で失われます。

このコマンドでダウンロードしてインストールできます。

32ビットまたは64ビットをRaspbianビットに変更する必要があります。

入力を確認してください

    uname -m
通常Raspbian Busterはarmv7l、so32bitです。

しかし、Berry BootをインストールしてRaspbian Busterを使用すると、出力はaarch64、つまり64ビットでした。

Sakakiのgentooまたはraspbian-nspawn-64を使用している場合は、64ビットに変更してください。

    bit=32bit or 64bit
    

    sudo wget https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/master/en/install${bit}.sh
    sudo chmod +x install${bit}.sh
    ./install${bit}.sh
# Raspi設定の変更

Raspi設定を変更する必要があります。まずはタイプ

sudo raspi-config
これはCUIのRaspi設定マネージャーです。

次に、プッシュキーボードによる詳細設定に進みます。

そしてGL（Fake KMS）を有効にします。

リブート。

Minecraftサーバーの使用

最初に、EULAを読む必要があります。

読んだ後、eula.txt、eula = falseをeula = trueに変更します

今開発中！

応援よろしくお願いします！
