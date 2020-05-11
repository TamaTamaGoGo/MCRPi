# MCRPi --- MineCraft-for-RaspberryPi

簡単なGUIアプリケーション-Minecraftのダウンロードと準備

これはRaspberryPi Rasbianへのスクリプトですが、Linuxでも動作すると思います...

このアプリケーションは、Minecraftをダウンロードして準備できます!

Minecraftサーバーもインストールできます！

このアプリケーションはzenityダイアログを使用します。

README.mdをすべて閲覧してください！

# MCRPiのインストール

空白を含む名前が付けられたフォルダにMCRPiを配置しないでください **X** MCR Pi- > **O** MCRPi

MCRPiのインストールスクリプトは、ファイルの場所で迷子になってしまいます...

このコマンドでダウンロードし、インストールできます。

まず、最初に32ビットまたは64ビットをRaspbianビットに変更する必要があります。

入力を確認してください

    uname -m
通常Raspbian Busterはarmv7l、なので32bitです。

しかし、Berry BootをインストールしてRaspbian Busterを使用すると、出力はaarch64、つまり64ビットでした。

Sakaki gentoo64またはraspbian-nspawn-64を使用している場合は、64ビットに変更してください。

    bit=32bit or 64bit
その次に、これをコピペして実行してください 

    sudo wget https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/master/jp/install${bit}.sh
    sudo chmod +x install${bit}.sh
    ./install${bit}.sh
# Raspi設定の変更

Raspi設定を変更する必要があります。まずは

    sudo raspi-config
を実行してください。

これはCUIのRaspi設定マネージャーです。

次に、キーボードを押しながら、Advanced Settingsに進みます。

そしてGL（Fake KMS）を有効にします。

    reboot
で再起動、またはDo you want to reboot?と聞かれたら、yesと答えてください。

# Minecraftサーバーの使用

最初に、EULAを読む必要があります。

読んだ後、eula.txtにある、eula = falseをeula = trueに変更します

# 現在開発中！

支援をよろしくお願いします！
