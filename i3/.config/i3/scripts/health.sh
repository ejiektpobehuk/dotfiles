#!/bin/zsh

ACPI=$(acpi -b)
CHARGE=$(echo -n "${ACPI}" | egrep -o "[0-9]+%" | sed -e "s,%,,g")
LEVEL=$(( CHARGE / 20 ))
SUB_LEVEL=$(( CHARGE - LEVEL*20 ))
FULL="'#ff0000'"
ECOLOUR=""
if [ -n "$(echo ${ACPI} | grep Charging)" ]; then
	CURR_1=$( echo $((144 + 5.55*$SUB_LEVEL)) | xargs printf '%X\n' | awk '{printf "%2s\n", $0}' | sed 's/ /0/g')
	CURR_2=$( echo $((195 - 3*$SUB_LEVEL)) | xargs printf '%X\n'| awk '{printf "%2s\n", $0}' | sed 's/ /0/g')
	CURR_3=$( echo $((212 - 10.6*$SUB_LEVEL)) | xargs printf '%X\n'| awk '{printf "%2s\n", $0}' | sed 's/ /0/g')
	CURR="'#$CURR_1$CURR_2$CURR_3'"
	ECOLOUR="'#90C3D4'"
elif [ -n "$(echo ${ACPI} | grep Full)" ]; then
	FULL="'#8FD989'"
else
	CURR_1=$( echo $((64 + 9.55*$SUB_LEVEL)) | xargs printf '%X\n' | awk '{printf "%2s\n", $0}' | sed 's/ /0/g')
	CURR_23=$( echo $((64 - 3.2*$SUB_LEVEL)) | xargs printf '%X\n'| awk '{printf "%2s\n", $0}' | sed 's/ /0/g')
	CURR="'#$CURR_1$CURR_23$CURR_23'"
	ECOLOUR="'#404040'"
	#    [ "${LEVEL}" -eq "0" ] && i3-msg "fullscreen disable"
fi



for i in `seq 0 4`; do
	if [[ (("$i" < "$LEVEL")) ]]; then
		echo -ne "<span color=$FULL> \uf004 </span>"
	elif [ "$i" -eq "$LEVEL" ]; then
		echo -ne "<span color=$CURR> \uf004 </span>"
	else
		echo -ne "<span color=$ECOLOUR> \uf004 </span>"
	fi
done

exit 0

