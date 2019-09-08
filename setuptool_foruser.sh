#!/bin/bash
gitpath="https://github.com/Lysithena/setup-tool"
gitdir=$(dirname $0)
#git clone ${gitpath} ${gitdir}

rm -rf ~/.config/backup
mkdir ~/.config/backup
for dir in $(ls $gitdir/config);
do
    echo "copying $dir"
    mv ~/.config/$dir ~/.config/backup/
    cp -rf $gitdir/config/$dir ~/.config/
    diff ~/.config/$dir ~/.config/backup/$dir
done

pip3 install --user pynvim #requirements of deoplete

mkdir ~/Trash
chsh -s $(which fish)
