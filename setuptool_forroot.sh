#!/bin/bash
softwares="golang gvfs-backends neovim python3-pip i3 curl rofi compton git ibus-mozc terminator fish ibus-mozc"

apt update
apt upgrade
apt -y install ${softwares}

#install polybar
#apt install -y cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev
#git clone https://github.com/jaagr/polybar.git
#cd polybar && bash ./build.sh
#cd ../

#install cica font
#if [ ! -e "./Cica_v5.0.1_with_emoji.zip" ];then
#wget https://github.com/miiton/Cica/releases/download/v5.0.1/Cica_v5.0.1_with_emoji.zip
#fi
#unzip "./Cica_v5.0.1_with_emoji.zip"
#mv ./Cica-* /usr/local/share/fonts
