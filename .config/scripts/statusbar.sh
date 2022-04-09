#!/bin/sh

# ^c$var^ = fg color
# ^b$var^ = bg color

interval=0

# load colors
. ~/.config/scripts/cat_stat

# cpu() {
# 	cpu_val=$(grep -o "^[^ ]*" /proc/loadavg)

# 	printf "^c$black^ ^b$green^ CPU"
# 	printf "^c$white^ ^b$grey^ $cpu_val"
# }

spotify() {
    if ps -C ncspot > /dev/null; then
        PLAYER="ncspot"
    fi
    
    if [ "$PLAYER" = "ncspot" ]; then
        ARTIST=$(playerctl metadata xesam:albumArtist)
        # TRACK=$(playerctl metadata title | sed 's/(.*//')
        TRACK=$(playerctl metadata title)
        STATUS=$(playerctl status)
        SEP1=" | "
        if [ "$STATUS" = "Playing" ]; then
            # STATUS="PLA"
            printf "^c$lavender^ SPT ^c$red^$ARTIST - $TRACK"
        # else
            # STATUS="PAU"
            # printf "^b$red^^c$black^ PAU ^b$black^^c$red^ $ARTIST - $TRACK "
            # printf null
        fi
    fi
    # printf "^b$red^^c$black^ $STATUS ^b$black^^c$red^ $ARTIST - $TRACK "
}

pkg_updates() {
	updates=$(checkupdates | wc -l)   # arch , needs pacman contrib

	# if [[ -z "$updates" ]]; then
	# 	printf "^c$black^^b$yellow^ PKG ^d^ Fully Updated "
	# else
	printf "^c$lavender^ PKG ^c$red^$updates"
	# fi
}

# pkg_updates() {
# 	updates=$(checkupdates | wc -l)   # arch , needs pacman contrib

# 	# if [[ -z "$updates" ]]; then
# 	# 	printf "^c$black^^b$yellow^ PKG ^d^ Fully Updated "
# 	# else
# 	printf "^c$black^^b$yellow^ PKG ^c$yellow^^b$black^  $updates "
# 	# fi
# }

get_volume(){
  curStatus=$(pactl get-sink-mute @DEFAULT_SINK@)
  volume=$(pactl get-sink-volume @DEFAULT_SINK@ | tail -n 2 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,' | head -n 1)

        if [ "${curStatus}" = 'Mute: yes' ]
        then
            printf "^c$red^ VOL ^c$red^MUTED"
        else
            printf "^c$lavender^ VOL ^c$red^$volume%%"
        fi
}

# battery() {
# 	get_capacity="$(cat /sys/class/power_supply/BAT1/capacity)"
# 	printf "^c$blue^   $get_capacity"
# }

# brightness() {
# 	printf "^c$red^   "
# 	printf "^c$red^%.0f\n" $(cat /sys/class/backlight/*/brightness)
# }

mem() {
  memory=$(free -h | awk '/^Mem/ { print $3 }')
  
  printf "^c$lavender^ MEM ^c$red^$memory"
 	  # printf "^c$red^ $(free -h | awk '/^Mem/ { print $3 }' | sed s/i//g)"
}

weather() {
  cond=$(curl -s wttr.in/Seoul?format=%t | sed 's/+//g')
  temp=$(curl -s wttr.in/Seoul?format=%C)

  printf "^b$blue^^c$black^ $cond ^d^ "
  printf "^c$blue^ $temp^d^ "
  #dunstify "$(curl -s 'wttr.in/Seoul?format=%C+%t' | sed 's/+//g')"
}

# wlan() {
# 	case "$(cat /sys/class/net/wl*/operstate 2>/dev/null)" in
# 	up) printf "^c$black^ ^b$blue^ 󰤨 ^d^%s" " ^c$blue^Connected" ;;
# 	down) printf "^c$black^ ^b$blue^ 󰤭 ^d^%s" " ^c$blue^Disconnected" ;;
# 	esac
# }

clock() {
  printf "^c$lavender^ $(date '+%a ' | sed 's/.*/\U&/')"
	printf "^c$red^$(date '+%I:%M%p')"
}

while true; do

	[ $interval = 0 ] || [ $(($interval % 3600)) = 0 ] && updates=$(pkg_updates)
	interval=$((interval + 1))

  sleep 1 && xsetroot -name "$(mem) $(pkg_updates) $(get_volume) $(clock)"
done

