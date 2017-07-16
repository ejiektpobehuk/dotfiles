#!/usr/bin/env bash
# vim:ts=4:sw=4:expandtab

ls /sys/devices/platform/coretemp.0/hwmon/hwmon1/temp2_input &> /dev/null && core1=$(cat /sys/devices/platform/coretemp.0/hwmon/hwmon1/temp2_input) && core2=$(cat /sys/devices/platform/coretemp.0/hwmon/hwmon1/temp3_input)
ls /sys/devices/platform/coretemp.0/hwmon/hwmon2/temp1_input &> /dev/null && core1=$(cat /sys/devices/platform/coretemp.0/hwmon/hwmon2/temp2_input) && core2=$(cat /sys/devices/platform/coretemp.0/hwmon/hwmon2/temp3_input)

temp=$(($core1+$core2))
result=$(($temp/2000))
echo $result "°C"

exit 0
