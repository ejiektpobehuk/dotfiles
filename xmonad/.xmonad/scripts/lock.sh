#!/usr/bin/env sh

# Locks the screen with i3lock, killing compositor
# right before, and spinning it back up straight
# after unlocking. It prevents notifications  or
# anything else from being drawn over the lock screen.

# !!!WARNING!!!
# This script doesn't work with regular i3lock.
# You need a for all the neat features:
# https://github.com/Raymo111/i3lock-color

# TODO: bring information back to the lockscreen

LOCK_FONT="Fira Sans"

killall picom
i3lock \
  --image ~/Pictures/lock \
  --nofork \
  --screen=1 \
  --pass-media-keys \
  --pass-volume-keys \
  --force-clock \
  --greeter-text="Welcome back, ejiek!" \
  --wrong-text="You have to try harder ^.~" \
  --verif-text="Hold still, we're going to the moon and back." \
  --noinput-text="Press backspace for 28 times in total to fight GRUB" \
  --time-font="${LOCK_FONT}" \
  --date-font="${LOCK_FONT}" \
  --layout-font="${LOCK_FONT}" \
  --verif-font="${LOCK_FONT}" \
  --wrong-font="${LOCK_FONT}" \
  --greeter-font="${LOCK_FONT}" \
  --time-pos="80:1340" \
  --time-color=665c54ff \
  --time-size=72 \
  --date-color=7c6f64ff \
  --time-align 1 \
  --date-align 1 \
  --bar-indicator \
  --bar-color=fbf1c700 \
  --verif-color=458588af \
  --keyhl-color=98971aaf \
  --bshl-color=d79921af \
  --wrong-color=9d0006af \
  --bar-base-width=5
nohup picom&
