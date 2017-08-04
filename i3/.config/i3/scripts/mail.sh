#!/bin/zsh

COUNT=$(notmuch dump | grep unread | wc -l)
if [[ COUNT -gt 0 ]]; then
	echo -ne "<span color='#fe8019'> \uf003 </span> $COUNT"
else
	echo -ne "<span color='#8fd989'> \uf2b7 </span>"
fi
