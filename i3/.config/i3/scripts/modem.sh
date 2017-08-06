#!/bin/zsh
# red cc241d
# green 8fd989
ENABLED=$(mmcli -m 0 | grep 'state' | head -n1 | awk -F"'" '{ print $2 }')
if [[ $ENABLED != "disabled" ]]; then
	MODEM=$(mmcli -L | tail -n2 | head -n 1 | awk -F"/" '{ print $6 }' | awk '{ print $1 }')
	SIGNAL=$(mmcli -m $MODEM | grep quality | awk -F"'" '{ print $2 }')
	TECH=$(mmcli -m $MODEM | grep tech | awk -F"'" '{ print $2 }')

	RED=$( echo $((204 - 0.61*$SIGNAL)) | xargs printf '%X\n' | awk '{printf "%2s\n", $0}' | sed 's/ /0/g')
	GREEN=$( echo $((36 + 1.81*$SIGNAL)) | xargs printf '%X\n'| awk '{printf "%2s\n", $0}' | sed 's/ /0/g')
	BLUE=$( echo $((29 + 1.08*$SIGNAL)) | xargs printf '%X\n'| awk '{printf "%2s\n", $0}' | sed 's/ /0/g')
	COLOUR="'#$RED$GREEN$BLUE'"

	echo -ne "<span color=$COLOUR> \uf012 </span> $TECH"
else
	echo -ne "<span color='#3c3836'> \uf012 </span> off"
fi
