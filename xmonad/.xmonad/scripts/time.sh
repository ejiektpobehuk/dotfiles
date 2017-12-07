#!/bin/bash
for COUNT in {0..9}
do dunstify -I /usr/share/icons/Arc/apps/32/preferences-system-time.png "$(date)" -t 1 -r 2681
sleep 0.5; done
