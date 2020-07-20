# MCRPi---MineCraft-for-RaspberryPi

簡単な GUI アプリケーション-Minecraft のダウンロードと準備

これは RaspberryPi Rasbian へのスクリプトですが、Linux でも動作すると思います...

このアプリケーションは、Minecraft をダウンロードして準備できます!

Minecraft サーバーもインストールできます！

このアプリケーションは zenity ダイアログを使用します。

zenity をインストールしていなくても 40 秒以内で、自動的にダウンロードされます。

**README.md をすべて閲覧してください！**

# MCRPi のインストール

まず、最初に、空白を含む名前が付けられたフォルダに MCRPi を配置しないでください
**X** MCR Pi- > **O** MCRPi

MCRPi のインストールスクリプトは、ファイルの場所で迷子になってしまいます...

このコマンドでダウンロードし、インストールできます。

まず、最初に 32 ビットまたは 64 ビットをビットに設定する必要があります。

入力を確認してください

    uname -m

通常 Raspbian Buster は armv7l、なので 32bit です。

しかし、Berry Boot をインストールして Raspbian Buster を使用すると、出力は
aarch64、つまり 64 ビットでした。

Sakaki gentoo64 または raspbian-nspawn-64 を使用している場合は、64 ビットに変更
してください。

    bit=32bit or 64bit

その次に、これをコピペして実行してください

    sudo wget https://raw.githubusercontent.com/TamaTamaGoGo/MCRPi---MineCraft-for-RaspberryPi/master/jp/install${bit}.sh
    sudo chmod +x install${bit}
    ./install${bit}

# Raspi 設定の変更

Raspi 設定を変更する必要があります。まずは

    sudo raspi-config

を実行してください。

これは CUI の Raspi 設定マネージャーです。

次に、キーボードを押しながら、Advanced Settings に進みます。

そして GL（Fake KMS）を有効にします。

    reboot

で再起動、または Do you want to reboot?と聞かれたら、yes と答えてください。

自動的に GPU memory の割り当ては、シェルスクリプトが設定してくれます！

# Minecraft サーバーの使用

最初に、EULA を読む必要があります。

読んだ後、eula.txt にある、eula=false を eula=true に変更します

# 現在開発中！

支援をよろしくお願いします！
