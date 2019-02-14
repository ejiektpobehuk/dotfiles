#!/bin/bash
killall compton
i3lock -i /tmp/lock -n
nohup compton&
