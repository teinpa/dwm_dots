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
        TRACK=$(playerctl metadata title | sed 's/(.*//')
        STATUS=$(playerctl status)
        SEP1=" | "
        if [ "$STATUS" = "Playing" ]; then
            # STATUS="PLA"
            printf "^b$rosewater^^c$black^ SPT ^b$black^^c$rosewater^  $ARTIST - $TRACK"
        # else
            # STATUS="PAU"
            # printf "^b$rosewater^^c$black^ PAU ^b$black^^c$rosewater^ $ARTIST - $TRACK "
            # printf null
        fi
    fi
    # printf "^b$rosewater^^c$black^ $STATUS ^b$black^^c$rosewater^ $ARTIST - $TRACK "
}

pkg_updates() {
	updates=$(checkupdates | wc -l)   # arch , needs pacman contrib

	# if [[ -z "$updates" ]]; then
	# 	printf "^c$black^^b$yellow^ PKG ^d^ Fully Updated "
	# else
	printf "^b$yellow^^c$black^ PKG ^b$black^^c$yellow^  $updates "
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
            printf "^b$red^^c$black^ VOL ^b$black^^c$red^  MUTED "
        else
            printf "^b$green^^c$black^ VOL ^b$black^^c$green^  $volume%% "
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
  
  printf "^b$black^ ^c$black^^b$blue^ MEM ^b$black^^c$blue^  $memory "
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
  printf "^b$red^^c$black^ $(date '+%a' | sed 's/.*/\U&/') "
	printf "^b$black^^c$red^  $(date '+%I:%M%p')"
}

while true; do

	[ $interval = 0 ] || [ $(($interval % 3600)) = 0 ] && updates=$(pkg_updates)
	interval=$((interval + 1))

  sleep 1 && xsetroot -name "$(spotify) $(mem) $(pkg_updates) $(get_volume) $(clock)"
done

