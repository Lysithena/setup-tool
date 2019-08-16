#!/bin/bash
gitpath="https://github.com/Lysithena/setup-tool"
printf "enter your password:"
read pass
user="${whoami}"

softwares="vlc neovim python3-pip"
echo "${pass}" | sudo -S echo 'deb http://ftp.jp.debian.org/debian experimental main' >> /etc/apt/sources.list
echo "${pass}" | sudo -S echo 'deb http://ftp.jp.debian.org/debian unstable main' >> /etc/apt/sources.list
echo 'APT::Default-Release "stable";' | echo "${pass}" | sudo -S echo tee -a /etc/apt/apt.conf.d/00local
echo "${pass}" | sudo -S apt update && echo "${pass}" | sudo -S apt -y upgrade
echo "${pass}" | sudo -S apt -y install ${softwares}

wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
echo "${pass}" | sudo -S cp nvim-linux64/bin/nvim /usr/local/bin
mkdir "${user}/.config/nvim"
wget "${gitpath}/config/nvim"
pip3 install --user pynvim #requirements of deoplete
