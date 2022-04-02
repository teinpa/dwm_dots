#!/bin/sh

RET=$(echo -e "shutdown\nreboot\nlogout\nlock\ncancel" | dmenu -nb "#1e1e2e" -nf "#D9E0EE" -sb "#f28fad" -sf "#1e1e2e" -Y 7 -X 15 -W 2530 -p "POWER:")

case $RET in
	shutdown) poweroff ;;
	reboot) reboot ;;
	logout) pkill -KILL -u $USER ;;
  lock) exec slock ;;
	*) ;;
esac   

