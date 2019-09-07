#!/bin/bash
configs=("i3" "rofi" "polybar" "nvim" "fish" "fisher")
dir=`dirname $0`

echo "starting"
for i in ${configs[@]}
do
    echo "copying $i"
    cp -rf ~/.config/$i $dir/config/
done
echo "finished"
