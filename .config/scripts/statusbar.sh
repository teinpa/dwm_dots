#!/bin/sh

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
            printf "^c$lavender^ $ARTIST ^c$red^$TRACK"
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


get_volume(){
  curStatus=$(pactl get-sink-mute @DEFAULT_SINK@)
  volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')

        if [ "${curStatus}" = 'Mute: yes' ]
        then
            printf "^c$red^ VOL ^c$red^MUTED"
        else
            printf "^c$lavender^ VOL ^c$red^$volume%"
        fi
}

mem() {
  memory=$(free -h | awk '/^Mem/ { print $3 }')
  
  printf "^c$lavender^ MEM ^c$red^$memory"
# printf "^c$red^ $(free -h | awk '/^Mem/ { print $3 }' | sed s/i//g)"
}

weather() {
  temp=$(curl -s wttr.in/Seoul?format=%t | sed 's/+//g')
  cond=$(curl -s wttr.in/Seoul?format=%C)

  printf "^c$lavender^ $cond ^c$red^$temp"
  # printf "^c$red^ $temp"
}

clock() {
  printf "^c$lavender^ $(date '+%a ' | sed 's/.*/\U&/')"
	printf "^c$red^$(date '+%I:%M%p')"
}

while true; do

	[ $interval = 0 ] || [ $(($interval % 3600)) = 0 ] && updates=$(pkg_updates)
	interval=$((interval + 1))

  sleep 1 && xsetroot -name "$(spotify) $(mem) $(pkg_updates) $(get_volume) $(clock)"
done

