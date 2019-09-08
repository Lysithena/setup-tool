#!/bin/bash
configs=("i3" "rofi" "polybar" "nvim" "fish" "fisher")
dir=`dirname $0`

rm -rf ~/.config/backup
mkdir ~/.config/backup
for i in ${configs[@]}
do
    mv $dir/config/$i ~/.config/backup/
    rm -rf $dir/config/$i
done

for i in ${configs[@]}
do
    echo "copying $i"
    cp -rf ~/.config/$i $dir/config/
done
echo "finished"
