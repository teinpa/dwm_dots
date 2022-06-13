#!/bin/sh

RET=$(echo -e "shutdown\nreboot\nlogout\nlock\ncancel" | dmenu -nb "#1e1e2e" -nf "#c6d0f5" -sb "#f38ba8" -sf "#1e1e2e" -Y 7 -X 15 -W 700 -p "POWER:")

case $RET in
	shutdown) poweroff ;;
	reboot) reboot ;;
	logout) pkill -KILL -u hooxoo ;;
  lock) exec slock ;;
	*) ;;
esac   

