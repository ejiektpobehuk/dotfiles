#!/usr/bin/env sh

# Animated clock in notification
# Sends notification 10 time a second to imitate persistent clock ticking
# Does it for 5 seconds

for COUNT in {0..49}
do notify-send --category=animated_clock --hint=string:x-dunst-stack-tag:clock --icon=/usr/share/icons/Arc/apps/32/preferences-system-time.png " " "$(date)"
sleep 0.1; done
