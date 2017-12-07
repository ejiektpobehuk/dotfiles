#!/bin/bash
function is_mute {
    pamixer --get-mute | grep true > /dev/null
}

function send_notification {
    volume=$(pamixer --get-volume)
    bar=$(seq -s "─" $(($volume / 3)) | sed 's/[0-9]//g')
    # Send the notification
    dunstify -i audio-volume-high-symbolic -t 8 -r 2593 -u normal "    $bar"
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
	    dunstify -i audio-volume-muted-symbolic -t 8 -r 2593 -u normal "    Mute"
	else
	    send_notification
	fi
	;;
esac
