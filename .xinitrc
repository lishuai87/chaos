#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

#if [ -d /etc/X11/xinit/xinitrc.d ]; then
#  for f in /etc/X11/xinit/xinitrc.d/*; do
#    [ -x "$f" ] && . "$f"
#  done
#  unset f
#fi

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx

#killall fcitx
#fcitx &
emacs --daemon
xmodmap .xmodmap

#exec ck-launch-session startxfce4
#exec startxfce4
exec mate-session
