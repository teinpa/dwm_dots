#!/bin/sh

RET=$(echo -e "shutdown\nreboot\nlogout\nlock\ncancel" | dmenu -nb "#1a1b26" -nf "#c0caf5" -sb "#f7768e" -sf "#1a1b26" -Y 5 -X 10 -W 2535 -p "POWER:")

case $RET in
	shutdown) poweroff ;;
	reboot) reboot ;;
	logout) pkill -KILL -u hooxoo ;;
  lock) exec slock ;;
	*) ;;
esac   

