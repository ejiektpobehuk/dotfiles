#!/bin/zsh

COUNT=$(notmuch dump | grep unread | wc -l)
if [[ COUNT > 0 ]]; then
	echo -ne "<span color='#98971A'> \uf003 </span> $COUNT"
else
	echo "\uf2b7 fucking empty"
fi
