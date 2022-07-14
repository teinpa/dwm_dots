#!/bin/sh

RET=$(echo -e "play-pause\nnext\nprevious\nstop\ncancel" | dmenu -nb "#1e1e2e" -nf "#c6d0f5" -sb "#a6e3a1" -sf "#1e1e2e" -Y 5 -X 10 -W 2535 -p "MUSIC:")

case $RET in
  play-pause) playerctl play-pause ;;
  next) playerctl next ;;
  previous) playerctl previous ;;
  stop) playerctl stop ;;
  *) ;;
esac

