#!/bin/bash
configs=("i3" "rofi" "polybar" "nvim" "fish" "fisher")
dir=`dirname $0`

for i in ${configs[@]}
do
    mv $dir/config/$i $dir/backup/
    rm -rf $dir/config/$i
done

for i in ${configs[@]}
do
    echo "copying $i"
    cp -rf ~/.config/$i $dir/config/
done
echo "finished"
