#!/bin/bash
configs=("i3" "rofi" "nvim" "fish" "fisher")
dir=`dirname $0`

for i in ${configs[@]}
do
    cp -rf ~/.config/$i $dir/config/
done
