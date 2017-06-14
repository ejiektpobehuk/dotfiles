#!/bin/bash
# i3 lock script: pixelates screen and adds lock pic
# requires imagemagick and scrot

tmpbg="/tmp/lockscreen.png"
dir="$HOME/Pictures/lockscreen/"
images=($(find ${dir} -name 'lock_*.png'))
rnd=($(seq 0 $(expr ${#images[@]} - 1) | shuf))
if [ $1 ]; then
    pic=$dir'lock_'$1'.png'
else
    pic=${images[${rnd[i]}]}
fi

swaygrab "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% -fill black -colorize 25% "$tmpbg"

if [ -f "$pic" ]; then
    convert "$tmpbg" "$pic" -gravity center -geometry +0+0 -composite -matte "$tmpbg"
fi

#swaylock -u -i "$tmpbg" >> /dev/null
swaylock -i "$tmpbg" >> /dev/null
