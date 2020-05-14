#!/usr/bin/env sh
DEFAULT=$(pactl info | grep "Default Source" | cut -d " " -f3)
pactl set-source-mute "$DEFAULT" toggle
