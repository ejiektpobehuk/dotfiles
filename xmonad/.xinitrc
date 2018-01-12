#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrandr --output DP-2 --right-of DP-1 --auto --rotate left
xrandr --output DP-1 --pos 0x525
feh --bg-fill ~/Pictures/wallpaper
setxkbmap -layout "us,ru" option "grp:escape,grp_led:caps"
xmodmap ~/.Xmodmap
kbdd&
unclutter&
compton&
xsetroot -cursor_name left_ptr
eval $(ssh-agent -s)
exec xmonad