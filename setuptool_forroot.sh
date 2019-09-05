#!/bin/bash
softwares="neovim python3-pip i3 rofi compton polybar git ibus-mozc terminator fish"

apt update
apt upgrade
apt -y install ${softwares}
#if [ ! -e "./Cica_v5.0.1_with_emoji.zip" ];then
#wget https://github.com/miiton/Cica/releases/download/v5.0.1/Cica_v5.0.1_with_emoji.zip
#fi
#unzip "./Cica_v5.0.1_with_emoji.zip"
#cp ./Cica-* /usr/local/share/fonts
