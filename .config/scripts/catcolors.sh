#!/bin/sh

# Catppuccin color selector by hooxoo

# grab hex code
function fromhex() {
  hex=${1#\#}
  r="0x${hex:0:2}"
  g="0x${hex:2:2}"
  b="0x${hex:4:2}"
  printf '\x1b[48;2;%d;%d;%dm' "$r" "$g" "$b"
}

# color values

# mocha
mo_Rosewater=$(fromhex "#f5e0dc")
mo_Flamingo=$(fromhex "#f2cdcd")
mo_Pink=$(fromhex "#f5c2e7")
mo_Mauve=$(fromhex "#cba6f7")
mo_Red=$(fromhex "#f38ba8")
mo_Maroon=$(fromhex "#eba0ac")
mo_Peach=$(fromhex "#fab387")
mo_Yellow=$(fromhex "#f9e2af")
mo_Green=$(fromhex "#a6e3a1")
mo_Teal=$(fromhex "#94e2d5")
mo_Sky=$(fromhex "#89dceb")
mo_Sapphire=$(fromhex "#74c7ec")
mo_Blue=$(fromhex "#87b0f9")
mo_Lavender=$(fromhex "#b4befe")
mo_Text=$(fromhex "#c6d0f5")
mo_Subtext1=$(fromhex "#b3bcdf")
mo_Subtext0=$(fromhex "#a1a8c9")
mo_Overlay2=$(fromhex "#8e95b3")
mo_Overlay1=$(fromhex "#7b819d")
mo_Overlay0=$(fromhex "#696d86")
mo_Surface2=$(fromhex "#565970")
mo_Surface1=$(fromhex "#43465a")
mo_Surface0=$(fromhex "#313244")
mo_Base=$(fromhex "#1e1e2e")
mo_Mantle=$(fromhex "#181825")
mo_Crust=$(fromhex "#11111b")

# latte
la_Rosewater=$(fromhex "#dc8a78")
la_Flamingo=$(fromhex "#dd7878")
la_Pink=$(fromhex "#ea76cb")
la_Mauve=$(fromhex "#8839ef")
la_Red=$(fromhex "#d20f39")
la_Maroon=$(fromhex "#e64553")
la_Peach=$(fromhex "#fe640b")
la_Yellow=$(fromhex "#df8e1d")
la_Green=$(fromhex "#40a02b")
la_Teal=$(fromhex "#179299")
la_Sky=$(fromhex "#04a5e5")
la_Sapphire=$(fromhex "#209fb5")
la_Blue=$(fromhex "#1e66f5")
la_Lavender=$(fromhex "#7287fd")
la_Text=$(fromhex "#4c4f69")
la_Subtext1=$(fromhex "#5c5f77")
la_Subtext0=$(fromhex "#6c6f85")
la_Overlay2=$(fromhex "#7c7f93")
la_Overlay1=$(fromhex "#8c8fA1")
la_Overlay0=$(fromhex "#9ca0b0")
la_Surface2=$(fromhex "#acb0be")
la_Surface1=$(fromhex "#bcc0cc")
la_Surface0=$(fromhex "#ccd0da")
la_Base=$(fromhex "#eff1f5")
la_Mantle=$(fromhex "#e6e9ef")
la_Crust=$(fromhex "#dce0e8")

#frappe
fr_Rosewater=$(fromhex "#f2d5cf")
fr_Flamingo=$(fromhex "#eebebe")
fr_Pink=$(fromhex "#f4b8e4")
fr_Mauve=$(fromhex "#ca9ee6")
fr_Red=$(fromhex "#e78284")
fr_Maroon=$(fromhex "#ea999c")
fr_Peach=$(fromhex "#ef9f76")
fr_Yellow=$(fromhex "#e5c890")
fr_Green=$(fromhex "#a6d189")
fr_Teal=$(fromhex "#81c8be")
fr_Sky=$(fromhex "#99d1db")
fr_Sapphire=$(fromhex "#85c1dc")
fr_Blue=$(fromhex "#8caaee")
fr_Lavender=$(fromhex "#babbf1")
fr_Text=$(fromhex "#c6ceef")
fr_Subtext1=$(fromhex "#b5bddc")
fr_Subtext0=$(fromhex "#a5acc9")
fr_Overlay2=$(fromhex "#949bb7")
fr_Overlay1=$(fromhex "#838aa4")
fr_Overlay0=$(fromhex "#737891")
fr_Surface2=$(fromhex "#62677e")
fr_Surface1=$(fromhex "#51566c")
fr_Surface0=$(fromhex "#414559")
fr_Base=$(fromhex "#303446")
fr_Mantle=$(fromhex "#292c3c")
fr_Crust=$(fromhex "#232634")

#macchiato
ma_Rosewater=$(fromhex "#f4dbd6")
ma_Flamingo=$(fromhex "#f0c6c6")
ma_Pink=$(fromhex "#f5bde6")
ma_Mauve=$(fromhex "#c6a0f6")
ma_Red=$(fromhex "#ed8796")
ma_Maroon=$(fromhex "#ee99a0")
ma_Peach=$(fromhex "#f5a97f")
ma_Yellow=$(fromhex "#eed49f")
ma_Green=$(fromhex "#a6da95")
ma_Teal=$(fromhex "#8bd5ca")
ma_Sky=$(fromhex "#91d7e3")
ma_Sapphire=$(fromhex "#7dc4e4")
ma_Blue=$(fromhex "#8aadf4")
ma_Lavender=$(fromhex "#b7bdf8")
ma_Text=$(fromhex "#c5cff5")
ma_Subtext1=$(fromhex "#b3bce0")
ma_Subtext0=$(fromhex "#a1aacb")
ma_Overlay2=$(fromhex "#8f97b7")
ma_Overlay1=$(fromhex "#7d84a2")
ma_Overlay0=$(fromhex "#6c728d")
ma_Surface2=$(fromhex "#5a5f78")
ma_Surface1=$(fromhex "#484c64")
ma_Surface0=$(fromhex "#363a4f")
ma_Base=$(fromhex "#24273a")
ma_Mantle=$(fromhex "#1e2030")
ma_Crust=$(fromhex "#181926")

# display, select, copy hex color codes
echo -e "\n[ Catppuccin color selector ]"
echo -e "\n[01] Mocha     ${mo_Rosewater} ${mo_Flamingo} ${mo_Pink} ${mo_Mauve} ${mo_Red} ${mo_Maroon} ${mo_Peach} ${mo_Yellow} ${mo_Green} ${mo_Teal} ${mo_Sky} ${mo_Sapphire} ${mo_Blue} ${mo_Lavender} $(tput sgr0)"
echo "[02] Latte     ${la_Rosewater} ${la_Flamingo} ${la_Pink} ${la_Mauve} ${la_Red} ${la_Maroon} ${la_Peach} ${la_Yellow} ${la_Green} ${la_Teal} ${la_Sky} ${la_Sapphire} ${la_Blue} ${la_Lavender} $(tput sgr0)"
echo "[03] Frappe    ${fr_Rosewater} ${fr_Flamingo} ${fr_Pink} ${fr_Mauve} ${fr_Red} ${fr_Maroon} ${fr_Peach} ${fr_Yellow} ${fr_Green} ${fr_Teal} ${fr_Sky} ${fr_Sapphire} ${fr_Blue} ${fr_Lavender} $(tput sgr0)"
echo "[04] Macchiato ${ma_Rosewater} ${ma_Flamingo} ${ma_Pink} ${ma_Mauve} ${ma_Red} ${ma_Maroon} ${ma_Peach} ${ma_Yellow} ${ma_Green} ${ma_Teal} ${ma_Sky} ${ma_Sapphire} ${ma_Blue} ${ma_Lavender} $(tput sgr0)"
echo
read -p "Select flavor [1~4]: " flav
echo
  if [ $flav = 1 ] ; then
    echo -e "[01] Rosewater ${mo_Rosewater}\x1b[30;2m #f5e0dc $(tput sgr0)     [14] Lavender  ${mo_Lavender}\x1b[30;2m #b4befe $(tput sgr0)"
    echo -e "[02] Flamingo  ${mo_Flamingo}\x1b[30;2m #f2cdcd $(tput sgr0)     [15] Text      ${mo_Text}\x1b[30;2m #c6d0f5 $(tput sgr0)"
    echo -e "[03] Pink      ${mo_Pink}\x1b[30;2m #f5c2e7 $(tput sgr0)     [16] Subtext 1 ${mo_Subtext1} #b3bcdf $(tput sgr0)"
    echo -e "[04] Mauve     ${mo_Mauve}\x1b[30;2m #cba6f7 $(tput sgr0)     [17] Subtext 0 ${mo_Subtext0} #a1a8c9 $(tput sgr0)"
    echo -e "[05] Red       ${mo_Red}\x1b[30;2m #f38ba8 $(tput sgr0)     [18] Overlay 2 ${mo_Overlay2} #8e95b3 $(tput sgr0)"
    echo -e "[06] Maroon    ${mo_Maroon}\x1b[30;2m #eba0ac $(tput sgr0)     [19] Overlay 1 ${mo_Overlay1} #7b819d $(tput sgr0)"
    echo -e "[07] Peach     ${mo_Peach}\x1b[30;2m #fab387 $(tput sgr0)     [20] Overlay 0 ${mo_Overlay0} #696d86 $(tput sgr0)"
    echo -e "[08] Yellow    ${mo_Yellow}\x1b[30;2m #f9e2af $(tput sgr0)     [21] Surface 2 ${mo_Surface2} #565970 $(tput sgr0)"
    echo -e "[09] Green     ${mo_Green}\x1b[30;2m #a6e3a1 $(tput sgr0)     [22] Surface 1 ${mo_Surface1} #43465a $(tput sgr0)"
    echo -e "[10] Teal      ${mo_Teal}\x1b[30;2m #94e2d5 $(tput sgr0)     [23] Surface 0 ${mo_Surface0} #313244 $(tput sgr0)"
    echo -e "[11] Sky       ${mo_Sky}\x1b[30;2m #89dceb $(tput sgr0)     [24] Base      ${mo_Base} #1e1e2e $(tput sgr0)"
    echo -e "[12] Sapphire  ${mo_Sapphire}\x1b[30;2m #74c7ec $(tput sgr0)     [25] Mantle    ${mo_Mantle} #181825 $(tput sgr0)"
    echo -e "[13] Blue      ${mo_Blue}\x1b[30;2m #87b0f9 $(tput sgr0)     [26] Crust     ${mo_Crust} #11111b $(tput sgr0)"
    echo
    read -p "Select number to copy hex code [1~26]: " sel
      if [ $sel = 1 ] ; then
        echo -e "${mo_Rosewater}\x1b[30;2mRosewater$(tput sgr0) copied to clipboard"
        printf "#f5e0dc" | xclip -sel clip
      elif [ $sel = 2 ] ; then
        echo -e "${mo_Flamingo}\x1b[30;2mFlamingo$(tput sgr0) copied to clipboard"
        printf "#f2cdcd" | xclip -sel clip
      elif [ $sel = 3 ] ; then
        echo -e "${mo_Pink}\x1b[30;2mPink$(tput sgr0) copied to clipboard"
        printf "#f5c2e7" | xclip -sel clip
      elif [ $sel = 4 ] ; then
        echo -e "${mo_Mauve}\x1b[30;2mMauve$(tput sgr0) copied to clipboard"
        printf "#cba6f7" | xclip -sel clip
      elif [ $sel = 5 ] ; then
        echo -e "${mo_Red}\x1b[30;2mRed$(tput sgr0) copied to clipboard"
        printf "#f38ba8" | xclip -sel clip
      elif [ $sel = 6 ] ; then
        echo -e "${mo_Maroon}\x1b[30;2mMaroon$(tput sgr0) copied to clipboard"
        printf "#eba0ac" | xclip -sel clip
      elif [ $sel = 7 ] ; then
        echo -e "${mo_Peach}\x1b[30;2mPeach$(tput sgr0) copied to clipboard"
        printf "#fab387" | xclip -sel clip
      elif [ $sel = 8 ] ; then
        echo -e "${mo_Yellow}\x1b[30;2mYellow$(tput sgr0) copied to clipboard"
        printf "#f9e2af" | xclip -sel clip
      elif [ $sel = 9 ] ; then
        echo -e "${mo_Green}\x1b[30;2mGreen$(tput sgr0) copied to clipboard"
        printf "#a6e3a1" | xclip -sel clip
      elif [ $sel = 10 ] ; then
        echo -e "${mo_Teal}\x1b[30;2mTeal$(tput sgr0) copied to clipboard"
        printf "#95e2d5" | xclip -sel clip
      elif [ $sel = 11 ] ; then
        echo -e "${mo_Sky}\x1b[30;2mSky$(tput sgr0) copied to clipboard"
        printf "#89dceb" | xclip -sel clip
      elif [ $sel = 12 ] ; then
        echo -e "${mo_Sapphire}\x1b[30;2mSapphire$(tput sgr0) copied to clipboard"
        printf "#74c7ec" | xclip -sel clip
      elif [ $sel = 13 ] ; then
        echo "${mo_Blue}Blue$(tput sgr0) copied to clipboard"
        printf "#87b0f9" | xclip -sel clip
      elif [ $sel = 14 ] ; then
        echo -e "${mo_Lavender}\x1b[30;2mLavender$(tput sgr0) copied to clipboard"
        printf "#b4befe" | xclip -sel clip
      elif [ $sel = 15 ] ; then
        echo -e "${mo_Text}\x1b[30;2mText$(tput sgr0) copied to clipboard"
        printf "#c6d0f5" | xclip -sel clip
      elif [ $sel = 16 ] ; then
        echo "${mo_Subtext1}Subtext 1$(tput sgr0) copied to clipboard"
        printf "#b3bcdf" | xclip -sel clip
      elif [ $sel = 17 ] ; then
        echo "${mo_Subtext0}Subtext 0$(tput sgr0) copied to clipboard"
        printf "#a1a8c9" | xclip -sel clip
      elif [ $sel = 18 ] ; then
        echo "${mo_Overlay2}Overlay 2$(tput sgr0) copied to clipboard"
        printf "#8e95b3" | xclip -sel clip
      elif [ $sel = 19 ] ; then
        echo -e "${mo_Overlay1}\x1b[30;2mOverlay 1$(tput sgr0) copied to clipboard"
        printf "#7b819d" | xclip -sel clip
      elif [ $sel = 20 ] ; then
        echo -e "${mo_Overlay0}\x1b[30;2mOverlay 0$(tput sgr0) copied to clipboard"
        printf "#696d86" | xclip -sel clip
      elif [ $sel = 21 ] ; then
        echo -e "${mo_Surface2}\x1b[30;2mSurface 2$(tput sgr0) copied to clipboard"
        printf "#565970" | xclip -sel clip
      elif [ $sel = 22 ] ; then
        echo -e "${mo_Surface1}\x1b[30;2mSurface 1$(tput sgr0) copied to clipboard"
        printf "#43465a" | xclip -sel clip
      elif [ $sel = 23 ] ; then
        echo -e "${mo_Surface0}\x1b[30;2mSurface 0$(tput sgr0) copied to clipboard"
        printf "#313244" | xclip -sel clip
      elif [ $sel = 24 ] ; then
        echo -e "${mo_Base}\x1b[30;2mBase$(tput sgr0) copied to clipboard"
        printf "#1e1e2e" | xclip -sel clip
      elif [ $sel = 25 ] ; then
        echo -e "${mo_Mantle}\x1b[30;2mMantle$(tput sgr0) copied to clipboard"
        printf "#181825" | xclip -sel clip
      elif [ $sel = 26 ] ; then
        echo -e "${mo_Crust}\x1b[30;2mCrust$(tput sgr0) copied to clipboard"
        printf "#11111b" | xclip -sel clip
      else
        echo "Invalid choice"
    fi
  
  elif [ $flav = 2 ] ; then
    echo -e "[01] Rosewater ${la_Rosewater} #dc8a78 $(tput sgr0)     [14] Lavender  ${la_Lavender} #7287fd $(tput sgr0)"
    echo -e "[02] Flamingo  ${la_Flamingo} #dd7878 $(tput sgr0)     [15] Text      ${la_Text} #4c4f69 $(tput sgr0)"
    echo -e "[03] Pink      ${la_Pink} #ea76cb $(tput sgr0)     [16] Subtext 1 ${la_Subtext1} #B3BCDF $(tput sgr0)"
    echo -e "[04] Mauve     ${la_Mauve} #8839ef $(tput sgr0)     [17] Subtext 0 ${la_Subtext0} #6c6f85 $(tput sgr0)"
    echo -e "[05] Red       ${la_Red} #d20f39 $(tput sgr0)     [18] Overlay 2 ${la_Overlay2} #7c7f93 $(tput sgr0)"
    echo -e "[06] Maroon    ${la_Maroon} #e64553 $(tput sgr0)     [19] Overlay 1 ${la_Overlay1} #8c8fa1 $(tput sgr0)"
    echo -e "[07] Peach     ${la_Peach} #fe640b $(tput sgr0)     [20] Overlay 0 ${la_Overlay0} #9ca0b0 $(tput sgr0)"
    echo -e "[08] Yellow    ${la_Yellow} #df8e1d $(tput sgr0)     [21] Surface 2 ${la_Surface2}\x1b[30;2m #acb0be $(tput sgr0)"
    echo -e "[09] Green     ${la_Green} #40a02b $(tput sgr0)     [22] Surface 1 ${la_Surface1}\x1b[30;2m #bcc0cc $(tput sgr0)"
    echo -e "[10] Teal      ${la_Teal} #179299 $(tput sgr0)     [23] Surface 0 ${la_Surface0}\x1b[30;2m #ccd0da $(tput sgr0)"
    echo -e "[11] Sky       ${la_Sky} #04a5e5 $(tput sgr0)     [24] Base      ${la_Base}\x1b[30;2m #eff1f5 $(tput sgr0)"
    echo -e "[12] Sapphire  ${la_Sapphire} #209fb5 $(tput sgr0)     [25] Mantle    ${la_Mantle}\x1b[30;2m #e6e9ef $(tput sgr0)"
    echo -e "[13] Blue      ${la_Blue} #1e66f5 $(tput sgr0)     [26] Crust     ${la_Crust}\x1b[30;2m #dce0e8 $(tput sgr0)"
    echo
    read -p "Select number to copy hex code [1~26]: " sel
      if [ $sel = 1 ] ; then
        echo -e "${la_Rosewater}Rosewater$(tput sgr0) copied to clipboard"
        printf "#dc8a78" | xclip -sel clip
      elif [ $sel = 2 ] ; then
        echo -e "${la_Flamingo}Flamingo$(tput sgr0) copied to clipboard"
        printf "#dd7878" | xclip -sel clip
      elif [ $sel = 3 ] ; then
        echo -e "${la_Pink}Pink$(tput sgr0) copied to clipboard"
        printf "#ea76cb" | xclip -sel clip
      elif [ $sel = 4 ] ; then
        echo -e "${la_Mauve}Mauve$(tput sgr0) copied to clipboard"
        printf "#8839ef" | xclip -sel clip
      elif [ $sel = 5 ] ; then
        echo -e "${la_Red}Red$(tput sgr0) copied to clipboard"
        printf "#d20f39" | xclip -sel clip
      elif [ $sel = 6 ] ; then
        echo -e "${la_Maroon}Maroon$(tput sgr0) copied to clipboard"
        printf "#e64553" | xclip -sel clip
      elif [ $sel = 7 ] ; then
        echo -e "${la_Peach}Peach$(tput sgr0) copied to clipboard"
        printf "#fe640b" | xclip -sel clip
      elif [ $sel = 8 ] ; then
        echo -e "${la_Yellow}Yellow$(tput sgr0) copied to clipboard"
        printf "#df8e1d" | xclip -sel clip
      elif [ $sel = 9 ] ; then
        echo -e "${la_Green}Green$(tput sgr0) copied to clipboard"
        printf "#40a02b" | xclip -sel clip
      elif [ $sel = 10 ] ; then
        echo -e "${la_Teal}Teal$(tput sgr0) copied to clipboard"
        printf "#179299" | xclip -sel clip
      elif [ $sel = 11 ] ; then
        echo -e "${la_Sky}Sky$(tput sgr0) copied to clipboard"
        printf "#04a5e5" | xclip -sel clip
      elif [ $sel = 12 ] ; then
        echo -e "${la_Sapphire}Sapphire$(tput sgr0) copied to clipboard"
        printf "#209fb5" | xclip -sel clip
      elif [ $sel = 13 ] ; then
        echo "${la_Blue}Blue$(tput sgr0) copied to clipboard"
        printf "#1e66f5" | xclip -sel clip
      elif [ $sel = 14 ] ; then
        echo -e "${la_Lavender}Lavender$(tput sgr0) copied to clipboard"
        printf "#7287fd" | xclip -sel clip
      elif [ $sel = 15 ] ; then
        echo -e "${la_Text}Text$(tput sgr0) copied to clipboard"
        printf "#C6D0F5" | xclip -sel clip
      elif [ $sel = 16 ] ; then
        echo "${la_Subtext1}Subtext 1$(tput sgr0) copied to clipboard"
        printf "#5c5f77" | xclip -sel clip
      elif [ $sel = 17 ] ; then
        echo "${la_Subtext0}Subtext 0$(tput sgr0) copied to clipboard"
        printf "#6c6f85" | xclip -sel clip
      elif [ $sel = 18 ] ; then
        echo "${la_Overlay2}Overlay 2$(tput sgr0) copied to clipboard"
        printf "#7c7f93" | xclip -sel clip
      elif [ $sel = 19 ] ; then
        echo -e "${la_Overlay1}Overlay 1$(tput sgr0) copied to clipboard"
        printf "#8c8fa1" | xclip -sel clip
      elif [ $sel = 20 ] ; then
        echo -e "${la_Overlay0}Overlay 0$(tput sgr0) copied to clipboard"
        printf "#9ca0b0" | xclip -sel clip
      elif [ $sel = 21 ] ; then
        echo -e "${la_Surface2}\x1b[30;2mSurface 2$(tput sgr0) copied to clipboard"
        printf "#acb0be" | xclip -sel clip
      elif [ $sel = 22 ] ; then
        echo -e "${la_Surface1}\x1b[30;2mSurface 1$(tput sgr0) copied to clipboard"
        printf "#bcc0cc" | xclip -sel clip
      elif [ $sel = 23 ] ; then
        echo -e "${la_Surface0}\x1b[30;2mSurface 0$(tput sgr0) copied to clipboard"
        printf "#ccd0da" | xclip -sel clip
      elif [ $sel = 24 ] ; then
        echo -e "${la_Base}\x1b[30;2mBase$(tput sgr0) copied to clipboard"
        printf "#eff1f5" | xclip -sel clip
      elif [ $sel = 25 ] ; then
        echo -e "${la_Mantle}\x1b[30;2mMantle$(tput sgr0) copied to clipboard"
        printf "#e6e9ef" | xclip -sel clip
      elif [ $sel = 26 ] ; then
        echo -e "${la_Crust}\x1b[30;2mCrust$(tput sgr0) copied to clipboard"
        printf "#dce0e8" | xclip -sel clip
      else
        echo "invalid choice"
    fi
  
  elif [ $flav = 3 ] ; then
    echo -e "[01] Rosewater ${fr_Rosewater}\x1b[30;2m #f2d5cf $(tput sgr0)     [14] Lavender  ${fr_Lavender}\x1b[30;2m #babbf1 $(tput sgr0)"
    echo -e "[02] Flamingo  ${fr_Flamingo}\x1b[30;2m #eebebe $(tput sgr0)     [15] Text      ${fr_Text}\x1b[30;2m #c6ceef $(tput sgr0)"
    echo -e "[03] Pink      ${fr_Pink}\x1b[30;2m #f4b8e4 $(tput sgr0)     [16] Subtext 1 ${fr_Subtext1} #b5bddc $(tput sgr0)"
    echo -e "[04] Mauve     ${fr_Mauve}\x1b[30;2m #ca9ee6 $(tput sgr0)     [17] Subtext 0 ${fr_Subtext0} #a5acc9 $(tput sgr0)"
    echo -e "[05] Red       ${fr_Red}\x1b[30;2m #e78284 $(tput sgr0)     [18] Overlay 2 ${fr_Overlay2} #949bb7 $(tput sgr0)"
    echo -e "[06] Maroon    ${fr_Maroon}\x1b[30;2m #ea999c $(tput sgr0)     [19] Overlay 1 ${fr_Overlay1} #838aa4 $(tput sgr0)"
    echo -e "[07] Peach     ${fr_Peach}\x1b[30;2m #ef9f76 $(tput sgr0)     [20] Overlay 0 ${fr_Overlay0} #737891 $(tput sgr0)"
    echo -e "[08] Yellow    ${fr_Yellow}\x1b[30;2m #e5c890 $(tput sgr0)     [21] Surface 2 ${fr_Surface2} #62677e $(tput sgr0)"
    echo -e "[09] Green     ${fr_Green}\x1b[30;2m #a6d189 $(tput sgr0)     [22] Surface 1 ${fr_Surface1} #51566c $(tput sgr0)"
    echo -e "[10] Teal      ${fr_Teal}\x1b[30;2m #81c8be $(tput sgr0)     [23] Surface 0 ${fr_Surface0} #414559 $(tput sgr0)"
    echo -e "[11] Sky       ${fr_Sky}\x1b[30;2m #99d1db $(tput sgr0)     [24] Base      ${fr_Base} #303446 $(tput sgr0)"
    echo -e "[12] Sapphire  ${fr_Sapphire}\x1b[30;2m #85c1dc $(tput sgr0)     [25] Mantle    ${fr_Mantle} #292c3c $(tput sgr0)"
    echo -e "[13] Blue      ${fr_Blue}\x1b[30;2m #8caaee $(tput sgr0)     [26] Crust     ${fr_Crust} #232634 $(tput sgr0)"
    echo
    read -p "Select number to copy hex code [1~26]: " sel
      if [ $sel = 1 ] ; then
        echo -e "${fr_Rosewater}\x1b[30;2mRosewater$(tput sgr0) copied to clipboard"
        printf "#f2d5cf" | xclip -sel clip
      elif [ $sel = 2 ] ; then
        echo -e "${fr_Flamingo}\x1b[30;2mFlamingo$(tput sgr0) copied to clipboard"
        printf "#eebebe" | xclip -sel clip
      elif [ $sel = 3 ] ; then
        echo -e "${fr_Pink}\x1b[30;2mPink$(tput sgr0) copied to clipboard"
        printf "#f4b8e4" | xclip -sel clip
      elif [ $sel = 4 ] ; then
        echo -e "${fr_Mauve}\x1b[30;2mMauve$(tput sgr0) copied to clipboard"
        printf "#ca9ee6" | xclip -sel clip
      elif [ $sel = 5 ] ; then
        echo -e "${fr_Red}\x1b[30;2mRed$(tput sgr0) copied to clipboard"
        printf "#e78284" | xclip -sel clip
      elif [ $sel = 6 ] ; then
        echo -e "${fr_Maroon}\x1b[30;2mMaroon$(tput sgr0) copied to clipboard"
        printf "#ea999c" | xclip -sel clip
      elif [ $sel = 7 ] ; then
        echo -e "${fr_Peach}\x1b[30;2mPeach$(tput sgr0) copied to clipboard"
        printf "#ef9f76" | xclip -sel clip
      elif [ $sel = 8 ] ; then
        echo -e "${fr_Yellow}\x1b[30;2mYellow$(tput sgr0) copied to clipboard"
        printf "#e5c890" | xclip -sel clip
      elif [ $sel = 9 ] ; then
        echo -e "${fr_Green}\x1b[30;2mGreen$(tput sgr0) copied to clipboard"
        printf "#a6d189" | xclip -sel clip
      elif [ $sel = 10 ] ; then
        echo -e "${fr_Teal}\x1b[30;2mTeal$(tput sgr0) copied to clipboard"
        printf "#81c8be" | xclip -sel clip
      elif [ $sel = 11 ] ; then
        echo -e "${fr_Sky}\x1b[30;2mSky$(tput sgr0) copied to clipboard"
        printf "#99d1db" | xclip -sel clip
      elif [ $sel = 12 ] ; then
        echo -e "${fr_Sapphire}\x1b[30;2mSapphire$(tput sgr0) copied to clipboard"
        printf "#85c1dc" | xclip -sel clip
      elif [ $sel = 13 ] ; then
        echo "${fr_Blue}Blue$(tput sgr0) copied to clipboard"
        printf "#8caaee" | xclip -sel clip
      elif [ $sel = 14 ] ; then
        echo -e "${fr_Lavender}\x1b[30;2mLavender$(tput sgr0) copied to clipboard"
        printf "#babbf1" | xclip -sel clip
      elif [ $sel = 15 ] ; then
        echo -e "${fr_Text}\x1b[30;2mText$(tput sgr0) copied to clipboard"
        printf "#c6ceef" | xclip -sel clip
      elif [ $sel = 16 ] ; then
        echo "${fr_Subtext1}Subtext 1$(tput sgr0) copied to clipboard"
        printf "#b5bddc" | xclip -sel clip
      elif [ $sel = 17 ] ; then
        echo "${fr_Subtext0}Subtext 0$(tput sgr0) copied to clipboard"
        printf "#a5acc9" | xclip -sel clip
      elif [ $sel = 18 ] ; then
        echo "${fr_Overlay2}Overlay 2$(tput sgr0) copied to clipboard"
        printf "#949bb7" | xclip -sel clip
      elif [ $sel = 19 ] ; then
        echo -e "${fr_Overlay1}\x1b[30;2mOverlay 1$(tput sgr0) copied to clipboard"
        printf "#838aa4" | xclip -sel clip
      elif [ $sel = 20 ] ; then
        echo -e "${fr_Overlay0}\x1b[30;2mOverlay 0$(tput sgr0) copied to clipboard"
        printf "#737891" | xclip -sel clip
      elif [ $sel = 21 ] ; then
        echo -e "${fr_Surface2}\x1b[30;2mSurface 2$(tput sgr0) copied to clipboard"
        printf "#62677e" | xclip -sel clip
      elif [ $sel = 22 ] ; then
        echo -e "${fr_Surface1}\x1b[30;2mSurface 1$(tput sgr0) copied to clipboard"
        printf "#51566c" | xclip -sel clip
      elif [ $sel = 23 ] ; then
        echo -e "${fr_Surface0}\x1b[30;2mSurface 0$(tput sgr0) copied to clipboard"
        printf "#414559" | xclip -sel clip
      elif [ $sel = 24 ] ; then
        echo -e "${fr_Base}\x1b[30;2mBase$(tput sgr0) copied to clipboard"
        printf "#303446" | xclip -sel clip
      elif [ $sel = 25 ] ; then
        echo -e "${fr_Mantle}\x1b[30;2mMantle$(tput sgr0) copied to clipboard"
        printf "#292c3c" | xclip -sel clip
      elif [ $sel = 26 ] ; then
        echo -e "${fr_Crust}\x1b[30;2mCrust$(tput sgr0) copied to clipboard"
        printf "#232634" | xclip -sel clip
      else
        echo "invalid choice"
    fi
  
  elif [ $flav = 4 ] ; then
    echo -e "[01] Rosewater ${ma_Rosewater}\x1b[30;2m #f4dbd6 $(tput sgr0)     [14] Lavender  ${ma_Lavender}\x1b[30;2m #b7bdf8 $(tput sgr0)"
    echo -e "[02] Flamingo  ${ma_Flamingo}\x1b[30;2m #f0c6c6 $(tput sgr0)     [15] Text      ${ma_Text}\x1b[30;2m #c5cff5 $(tput sgr0)"
    echo -e "[03] Pink      ${ma_Pink}\x1b[30;2m #f5bde6 $(tput sgr0)     [16] Subtext 1 ${ma_Subtext1} #b3bce0 $(tput sgr0)"
    echo -e "[04] Mauve     ${ma_Mauve}\x1b[30;2m #c6a0f6 $(tput sgr0)     [17] Subtext 0 ${ma_Subtext0} #a1aacb $(tput sgr0)"
    echo -e "[05] Red       ${ma_Red}\x1b[30;2m #ed8796 $(tput sgr0)     [18] Overlay 2 ${ma_Overlay2} #8f97b7 $(tput sgr0)"
    echo -e "[06] Maroon    ${ma_Maroon}\x1b[30;2m #ee99a0 $(tput sgr0)     [19] Overlay 1 ${ma_Overlay1} #7d84a2 $(tput sgr0)"
    echo -e "[07] Peach     ${ma_Peach}\x1b[30;2m #f5a97f $(tput sgr0)     [20] Overlay 0 ${ma_Overlay0} #6c728d $(tput sgr0)"
    echo -e "[08] Yellow    ${ma_Yellow}\x1b[30;2m #eed49f $(tput sgr0)     [21] Surface 2 ${ma_Surface2} #5a5f78 $(tput sgr0)"
    echo -e "[09] Green     ${ma_Green}\x1b[30;2m #a6da95 $(tput sgr0)     [22] Surface 1 ${ma_Surface1} #484c64 $(tput sgr0)"
    echo -e "[10] Teal      ${ma_Teal}\x1b[30;2m #8bd5ca $(tput sgr0)     [23] Surface 0 ${ma_Surface0} #363a4f $(tput sgr0)"
    echo -e "[11] Sky       ${ma_Sky}\x1b[30;2m #91d7e3 $(tput sgr0)     [24] Base      ${ma_Base} #24273a $(tput sgr0)"
    echo -e "[12] Sapphire  ${ma_Sapphire}\x1b[30;2m #7dc4e4 $(tput sgr0)     [25] Mantle    ${ma_Mantle} #1e2030 $(tput sgr0)"
    echo -e "[13] Blue      ${ma_Blue}\x1b[30;2m #8aadf4 $(tput sgr0)     [26] Crust     ${ma_Crust} #181926 $(tput sgr0)"
    echo
    read -p "Select number to copy hex code [1~26]: " sel
      if [ $sel = 1 ] ; then
        echo -e "${ma_Rosewater}\x1b[30;2mRosewater$(tput sgr0) copied to clipboard"
        printf "#f4dbd6" | xclip -sel clip
      elif [ $sel = 2 ] ; then
        echo -e "${ma_Flamingo}\x1b[30;2mFlamingo$(tput sgr0) copied to clipboard"
        printf "#f0c6c6" | xclip -sel clip
      elif [ $sel = 3 ] ; then
        echo -e "${ma_Pink}\x1b[30;2mPink$(tput sgr0) copied to clipboard"
        printf "#f5bde6" | xclip -sel clip
      elif [ $sel = 4 ] ; then
        echo -e "${ma_Mauve}\x1b[30;2mMauve$(tput sgr0) copied to clipboard"
        printf "#c6a0f6" | xclip -sel clip
      elif [ $sel = 5 ] ; then
        echo -e "${ma_Red}\x1b[30;2mRed$(tput sgr0) copied to clipboard"
        printf "#ed8796" | xclip -sel clip
      elif [ $sel = 6 ] ; then
        echo -e "${ma_Maroon}\x1b[30;2mMaroon$(tput sgr0) copied to clipboard"
        printf "#ee99a0" | xclip -sel clip
      elif [ $sel = 7 ] ; then
        echo -e "${ma_Peach}\x1b[30;2mPeach$(tput sgr0) copied to clipboard"
        printf "#f5a97f" | xclip -sel clip
      elif [ $sel = 8 ] ; then
        echo -e "${ma_Yellow}\x1b[30;2mYellow$(tput sgr0) copied to clipboard"
        printf "#eed49f" | xclip -sel clip
      elif [ $sel = 9 ] ; then
        echo -e "${ma_Green}\x1b[30;2mGreen$(tput sgr0) copied to clipboard"
        printf "#a6da95" | xclip -sel clip
      elif [ $sel = 10 ] ; then
        echo -e "${ma_Teal}\x1b[30;2mTeal$(tput sgr0) copied to clipboard"
        printf "#8bd5ca" | xclip -sel clip
      elif [ $sel = 11 ] ; then
        echo -e "${ma_Sky}\x1b[30;2mSky$(tput sgr0) copied to clipboard"
        printf "#91d7e3" | xclip -sel clip
      elif [ $sel = 12 ] ; then
        echo -e "${ma_Sapphire}\x1b[30;2mSapphire$(tput sgr0) copied to clipboard"
        printf "#7dc4e4" | xclip -sel clip
      elif [ $sel = 13 ] ; then
        echo "${ma_Blue}Blue$(tput sgr0) copied to clipboard"
        printf "#8aadf4" | xclip -sel clip
      elif [ $sel = 14 ] ; then
        echo -e "${ma_Lavender}\x1b[30;2mLavender$(tput sgr0) copied to clipboard"
        printf "#b7bdf8" | xclip -sel clip
      elif [ $sel = 15 ] ; then
        echo -e "${ma_Text}\x1b[30;2mText$(tput sgr0) copied to clipboard"
        printf "#c5cff5" | xclip -sel clip
      elif [ $sel = 16 ] ; then
        echo "${ma_Subtext1}Subtext 1$(tput sgr0) copied to clipboard"
        printf "#b3bce0" | xclip -sel clip
      elif [ $sel = 17 ] ; then
        echo "${ma_Subtext0}Subtext 0$(tput sgr0) copied to clipboard"
        printf "#a1aacb" | xclip -sel clip
      elif [ $sel = 18 ] ; then
        echo "${ma_Overlay2}Overlay 2$(tput sgr0) copied to clipboard"
        printf "#8f97b7" | xclip -sel clip
      elif [ $sel = 19 ] ; then
        echo -e "${ma_Overlay1}\x1b[30;2mOverlay 1$(tput sgr0) copied to clipboard"
        printf "#7d84a2" | xclip -sel clip
      elif [ $sel = 20 ] ; then
        echo -e "${ma_Overlay0}\x1b[30;2mOverlay 0$(tput sgr0) copied to clipboard"
        printf "#6c728d" | xclip -sel clip
      elif [ $sel = 21 ] ; then
        echo -e "${ma_Surface2}\x1b[30;2mSurface 2$(tput sgr0) copied to clipboard"
        printf "#5a5f78" | xclip -sel clip
      elif [ $sel = 22 ] ; then
        echo -e "${ma_Surface1}\x1b[30;2mSurface 1$(tput sgr0) copied to clipboard"
        printf "#484c64" | xclip -sel clip
      elif [ $sel = 23 ] ; then
        echo -e "${ma_Surface0}\x1b[30;2mSurface 0$(tput sgr0) copied to clipboard"
        printf "#363a4f" | xclip -sel clip
      elif [ $sel = 24 ] ; then
        echo -e "${ma_Base}\x1b[30;2mBase$(tput sgr0) copied to clipboard"
        printf "#24273a" | xclip -sel clip
      elif [ $sel = 25 ] ; then
        echo -e "${ma_Mantle}\x1b[30;2mMantle$(tput sgr0) copied to clipboard"
        printf "#1e2030" | xclip -sel clip
      elif [ $sel = 26 ] ; then
        echo -e "${ma_Crust}\x1b[30;2mCrust$(tput sgr0) copied to clipboard"
        printf "#181926" | xclip -sel clip
      else
        echo "invalid choice"
    fi
fi 

### eof ###
