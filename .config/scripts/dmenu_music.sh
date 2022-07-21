#!/bin/sh

RET=$(echo -e "play-pause\nnext\nprevious\nstop\ncancel" | dmenu -nb "#1a1b26" -nf "#c0caf5" -sb "#9ece6a" -sf "#1a1b26" -Y 5 -X 10 -W 2535 -p "MUSIC:")

case $RET in
  play-pause) playerctl play-pause ;;
  next) playerctl next ;;
  previous) playerctl previous ;;
  stop) playerctl stop ;;
  *) ;;
esac

