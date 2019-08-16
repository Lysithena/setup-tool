softwares="firefox vlc neovim python3-pip awesome git ibus-mozc"

echo "deb http://httpredir.debian.org/debian/ stretch main contrib non-free" >> /etc/apt/sources.list
apt update
apt upgrade
apt -y install ${softwares}
apt -y install linux-headers-$(uname -r|sed 's/[^-]*-[^-]*-//') nvidia-driver
if [ ! -e "./Cica_v5.0.1_with_emoji.zip"];then
wget https://github.com/miiton/Cica/releases/download/v5.0.1/Cica_v5.0.1_with_emoji.zip
fi
unzip "./Cica_v5.0.1_with_emoji.zip"
cp ./Cica-* /usr/local/share/fonts
