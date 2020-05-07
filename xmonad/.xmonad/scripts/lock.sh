#!/usr/bin/env sh

# Locks the screen with i3lock, killing compositor
# right before and spinning it back up straight 
# after unlocking. It prevents notifications from
# being drawn over the lock screen.

# TODO: bring information back to the lockscreen

killall picom
i3lock -i ~/Pictures/lock -n
nohup picom&
