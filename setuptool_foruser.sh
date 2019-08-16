gitpath="https://github.com/Lysithena/setup-tool"
gitdir="~/setup-tool"
mkdir ~/.config/awesome
mkdir ~/.config/nvim
git clone ${gitpath} ${gitdir}
cp -rf setup-tool/config/* ~/.config/
pip3 install --user pynvim #requirements of deoplete

rm -rf ${gitdir}
