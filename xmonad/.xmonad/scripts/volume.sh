#!/usr/bin/env sh
function is_mute {
    pamixer --get-mute | grep true > /dev/null
}

function send_notification {
    volume=$(pamixer --get-volume)
    active=$(seq -s "─" $(($volume / 4)) | sed 's/[0-9]//g')
    non_active=$(seq -s "─" $(( (100 - $volume ) / 4 )) | sed 's/[0-9]//g')
	bar="$active<span color='#2020f0'>|</span><span color='#a0a0a0'>$non_active</span>"
    # Send the notification
    dunstify -i audio-volume-high-symbolic -r 2593 -u critical " " "    $bar"
}

case $1 in
    up)
	# Set the volume on (if it was muted)
	pamixer -u
	pamixer -i 1
	send_notification
	;;

    down)
	pamixer -d 1
	send_notification
	;;

    mute)
	pamixer -t > /dev/null
	if is_mute ; then
	    dunstify -i audio-volume-muted-symbolic -r 2593 -u low "    Mute"
	else
	    send_notification
	fi
	;;
esac
