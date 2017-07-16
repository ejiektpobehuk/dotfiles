#!/bin/bash
#~/.config/i3/scripts/volume.sh | awk -F'%' '{ print $1 }' | xargs ~/.config/i3/scripts/a.out

STEP="${1:-5%}"

case $BLOCK_BUTTON in
  3) amixer -q -D pulse sset Master toggle ;;  # right click, mute/unmute
  4) amixer -q -D pulse sset Master ${STEP}+ unmute ;; # scroll up, increase
  5) amixer -q -D pulse sset Master ${STEP}- unmute ;; # scroll down, decrease
esac

amixer -D pulse get Master | tail -n1 | awk -F'\\[|\\]|%' '{print $2 " "  $5}' | xargs ~/.config/i3/scripts/a.out
#amixer get Master | tail -n1 | awk -F'\\[|\\]|%' '{print $2 " "  $7}' | xargs ~/.config/i3/scripts/a.out
