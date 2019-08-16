softwares="neovim python3-pip awesome git ibus-mozc"

apt update
apt upgrade
apt -y install ${softwares}
if [ ! -e "./Cica_v5.0.1_with_emoji.zip"];then
wget https://github.com/miiton/Cica/releases/download/v5.0.1/Cica_v5.0.1_with_emoji.zip
fi
unzip "./Cica_v5.0.1_with_emoji.zip"
cp ./Cica-* /usr/local/share/fonts
echo "deb http://httpredir.debian.org/debian/ stretch main contrib non-free" >> /etc/apt/sources.list
