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


feh --bg-fill ~/pictures/wallpaper
setxkbmap -layout "us,ru" option "grp:caps_toggle,grp_led:caps"
kbdd&
unclutter&
picom&
xsetroot -cursor_name left_ptr
eval $(ssh-agent -s)
export RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/src/
redshift -l 59.8944444:30.2641667&
dunst&
exec xmonad
