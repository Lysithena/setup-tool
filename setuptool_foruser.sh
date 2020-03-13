#!/bin/bash
gitpath="https://github.com/Lysithena/setup-tool"
gitdir=$(dirname $0)
#git clone ${gitpath} ${gitdir}

rm -rf ~/.config/backup
mkdir ~/.config/backup
dirstocopy=$(ls $gitdir/config)

if [ $# = 1 ];
then
    dirstocopy=$1
fi

for dir in $dirstocopy;
do
    echo "copying $dir"
    mv ~/.config/$dir ~/.config/backup/
    cp -rf $gitdir/config/$dir ~/.config/
    diff ~/.config/$dir ~/.config/backup/$dir
done

pip3 install --user pynvim #requirements of deoplete

chsh -s $(which fish)
