#!/usr/bin/env sh

# Toggle mic muteness and shows notification with new status

DEFAULT=$(pactl info | grep "Default Source" | cut -d " " -f3)
pactl set-source-mute "$DEFAULT" toggle
MUTE=$(pactl list | grep -A53 "Name: $DEFAULT" | grep Mute | awk '{ print $2 }')
if [ "$MUTE" = "yes" ]; then
  dunstify -I /usr/share/icons/Arc/status/symbolic/microphone-sensitivity-muted-symbolic.svg " " "Mute" -r 2682 -u critical
else
  dunstify -I /usr/share/icons/Arc/status/symbolic/microphone-sensitivity-high-symbolic.svg " " "Unmute" -r 2682 -u critical
fi;
