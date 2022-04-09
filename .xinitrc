#!/bin/sh

# kill if already running
killall -9 dunst transmission-daemon

# start picom
picom --config /home/hooxoo/.config/picom.conf &

# monitor timeout
xset s 1800 3600 3600 &

# xrdb
xrdb ~/.config/.Xresources

# lockscreen
xsidle.sh slock &

# mouse and keyboard
xsetroot -cursor_name left_ptr &
xset r rate 225 25 &
numlockx &
sxhkd -c /home/hooxoo/.config/sxhkd/sxhkdrc &

# notifications
dunst &

# korean input related
export GTK_IM_MODULE=kime
export QT_IM_MODULE=kime
export XMODIFIERS="@im=kime"
kime &

# set wallpaper
bash $HOME/.fehbg &

# torrent
transmission-daemon &

# launch dwm status bar
bash $HOME/.config/scripts/statusbar.sh &

# start dwm
exec dwm

