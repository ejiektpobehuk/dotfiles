#!/bin/zsh

COUNT=$(newsbeuter -r -x print-unread | awk '{ print $1 }' )
if [[ COUNT -gt 0 ]]; then
	echo -ne "<span color='#fe8019'> \uf1ea </span> $COUNT"
else
	echo -ne "<span color='#8fd989'> \uf1ea </span>"
fi
