#!/bin/sh
feh --bg-fill $(find "$HOME/pictures/wp" -name '*' | sort -R | head -n1)
