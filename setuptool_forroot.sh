#!/bin/bash
guisoftwares="maim gvfs-backends rofi compton i3 ibus-mozc terminator ibus-mozc"
softwares="feh atool golang neovim python3-pip curl git fish"

apt update
apt upgrade

apt -y install ${softwares}

if [ $# != 1 ]; then
    echo "arguments error"
fi

#if "$1"; then
    apt install ${guisoftwares}
    #install polybar
    #if [ ! -e /usr/local/bin/polybar]; then
        apt install -y libjsoncpp cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev
        git clone https://github.com/jaagr/polybar.git
        cd polybar && bash ./build.sh
        cd ../
        rm -rf polybar
    #fi
#fi

#install cica font
if [ ! -e "/usr/local/share/fonts/Cica-Regular.ttf" ];then
    mkdir Cica && cd Cica
    wget https://github.com/miiton/Cica/releases/download/v5.0.1/Cica_v5.0.1_with_emoji.zip
    unzip "./Cica_v5.0.1_with_emoji.zip"
    mv ./Cica-* /usr/local/share/fonts
    cd ../
    rm -rf Cica
fi
