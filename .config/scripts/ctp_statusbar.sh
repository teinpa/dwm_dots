

interval=0

# load color values

# mocha
mo_Rosewater=#f5e0dc
mo_Flamingo=#f2cdcd
mo_Pink=#f5c2e7
mo_Mauve=#cba6f7
mo_Red=#f38ba8
mo_Maroon=#eba0ac
mo_Peach=#fab387
mo_Yellow=#f9e2af
mo_Green=#a6e3a1
mo_Teal=#94e2d5
mo_Sky=#89dceb
mo_Sapphire=#74c7ec
mo_Blue=#87b0f9
mo_Lavender=#b4befe
mo_Text=#c6d0f5
mo_Subtext1=#b3bcdf
mo_Subtext0=#a1a8c9
mo_Overlay2=#8e95b3
mo_Overlay1=#7b819d
mo_Overlay0=#696d86
mo_Surface2=#565970
mo_Surface1=#43465a
mo_Surface0=#313244
mo_Base=#1e1e2e
mo_Mantle=#181825
mo_Crust=#11111b

# latte
la_Rosewater=#dc8a78
la_Flamingo=#dd7878
la_Pink=#ea76cb
la_Mauve=#8839ef
la_Red=#d20f39
la_Maroon=#e64553
la_Peach=#fe640b
la_Yellow=#df8e1d
la_Green=#40a02b
la_Teal=#179299
la_Sky=#04a5e5
la_Sapphire=#209fb5
la_Blue=#1e66f5
la_Lavender=#7287fd
la_Text=#4c4f69
la_Subtext1=#5c5f77
la_Subtext0=#6c6f85
la_Overlay2=#7c7f93
la_Overlay1=#8c8fA1
la_Overlay0=#9ca0b0
la_Surface2=#acb0be
la_Surface1=#bcc0cc
la_Surface0=#ccd0da
la_Base=#eff1f5
la_Mantle=#e6e9ef
la_Crust=#dce0e8

#frappe
fr_Rosewater=#f2d5cf
fr_Flamingo=#eebebe
fr_Pink=#f4b8e4
fr_Mauve=#ca9ee6
fr_Red=#e78284
fr_Maroon=#ea999c
fr_Peach=#ef9f76
fr_Yellow=#e5c890
fr_Green=#a6d189
fr_Teal=#81c8be
fr_Sky=#99d1db
fr_Sapphire=#85c1dc
fr_Blue=#8caaee
fr_Lavender=#babbf1
fr_Text=#c6ceef
fr_Subtext1=#b5bddc
fr_Subtext0=#a5acc9
fr_Overlay2=#949bb7
fr_Overlay1=#838aa4
fr_Overlay0=#737891
fr_Surface2=#62677e
fr_Surface1=#51566c
fr_Surface0=#414559
fr_Base=#303446
fr_Mantle=#292c3c
fr_Crust=#232634

#macchiato
ma_Rosewater=#f4dbd6
ma_Flamingo=#f0c6c6
ma_Pink=#f5bde6
ma_Mauve=#c6a0f6
ma_Red=#ed8796
ma_Maroon=#ee99a0
ma_Peach=#f5a97f
ma_Yellow=#eed49f
ma_Green=#a6da95
ma_Teal=#8bd5ca
ma_Sky=#91d7e3
ma_Sapphire=#7dc4e4
ma_Blue=#8aadf4
ma_Lavender=#b7bdf8
ma_Text=#c5cff5
ma_Subtext1=#b3bce0
ma_Subtext0=#a1aacb
ma_Overlay2=#8f97b7
ma_Overlay1=#7d84a2
ma_Overlay0=#6c728d
ma_Surface2=#5a5f78
ma_Surface1=#484c64
ma_Surface0=#363a4f
ma_Base=#24273a
ma_Mantle=#1e2030
ma_Crust=#181926

#decay
d_background=#1a1b26
d_foreground=#a9b1d6
d_black=#414868
d_red=#f7768e
d_green=#73daca
d_green1=#9ece6a
d_yellow=#e0af68
d_blue=#7aa2f7
d_magenta=#bb9af7
d_cyan=#7dcfff
d_lightgrey=#cfc9c2
d_white=#c0caf5

# functions

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
            printf "^c$d_magenta^ $ARTIST ^c$d_white$^$TRACK "
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
	printf "^c$d_yellow^ PKG ^c$d_white^$updates"
	# fi
}


get_volume(){
  curStatus=$(pactl get-sink-mute @DEFAULT_SINK@)
  volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')

        if [ "${curStatus}" = 'Mute: yes' ]
        then
            printf "^c$d_red^ VOL ^c$d_red^MUTED"
        else
            printf "^c$d_green1^ VOL ^c$d_white^$volume%"
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

  printf "^c$mo_Lavender^ $cond ^c$mo_Red^$temp"
  # printf "^c$red^ $temp"
}

clock() {
  printf "^c$d_red^ $(date '+%a ' | sed 's/.*/\U&/')"
  # printf "^c$mo_Lavender^$(date '+%b.%d ')"
  # printf "^c$mo_Red^ $(date '+%a ')"
  printf "^c$d_white^$(date '+%I:%M%p')"
}

# date() {
#   printf "^c$d_magenta^ $(date '+%b ' | sed 's/.*/\U&/')"
#   # printf "^c$mo_Lavender^$(date '+%b.%d ')"
#   # printf "^c$mo_Red^ $(date '+%a ')"
#   printf "^c$d_white^$(date '+%d')"
# }
#
while true; do

	[ $interval = 0 ] || [ $(($interval % 3600)) = 0 ] && updates=$(pkg_updates)
	interval=$((interval + 1))

  sleep 1 && xsetroot -name "$(spotify)$(pkg_updates) $(get_volume) $(clock)"
done

