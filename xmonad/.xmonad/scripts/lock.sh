#!/usr/bin/env sh

# Locks the screen with i3lock, killing compositor
# right before and spinning it back up straight 
# after unlocking. It prevents notifications from
# being drawn over the lock screen.

# TODO: bring information back to the lockscreen

killall picom
killall dunst
i3lock \
  -i ~/pictures/lock.ch.png \
  -n \
  --force-clock \
  --timepos="705:412" \
  --time-font="FiraSans Mono" \
  --timesize=10 \
  --timestr="%H:%M" \
  --datestr="" \
  --timecolor="076678ff" \
  --pass-media-keys \
  --pass-volume-keys
nohup picom&
