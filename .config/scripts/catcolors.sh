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
Flamingo=$(fromhex "#F2CDCD")
Mauve=$(fromhex "#DDB6F2")
Pink=$(fromhex "#F5C2E7")
Maroon=$(fromhex "#E8A2AF")
Red=$(fromhex "#F28FAD")
Peach=$(fromhex "#F8BD96")
Yellow=$(fromhex "#FAE3B0")
Green=$(fromhex "#ABE9B3")
Teal=$(fromhex "#B5E8E0")
Blue=$(fromhex "#96CDFB")
Sky=$(fromhex "#89DCEB")
Black0=$(fromhex "#161320")
Black1=$(fromhex "#1A1826")
Black2=$(fromhex "#1E1E2E")
Black3=$(fromhex "#302D41")
Black4=$(fromhex "#575268")
Gray0=$(fromhex "#6E6C7E")
Gray1=$(fromhex "#988BA2")
Gray2=$(fromhex "#C3BAC6")
White=$(fromhex "#D9E0EE")
Lavender=$(fromhex "#C9CBFF")
Rosewater=$(fromhex "#F5E0DC")

# display, select, copy hex color codes
echo -e "\nCatppuccin color selector"
echo
echo -e "[01] Flamingo ${Flamingo}\x1b[30;2m #F2CDCD $(tput sgr0)     [12] Black 0   ${Black0} #161320 $(tput sgr0)"
echo -e "[02] Mauve    ${Mauve}\x1b[30;2m #DDB6F2 $(tput sgr0)     [13] Black 1   ${Black1} #1A1826 $(tput sgr0)"
echo -e "[03] Pink     ${Pink}\x1b[30;2m #F5C2E7 $(tput sgr0)     [14] Black 2   ${Black2} #1E1E2E $(tput sgr0)"
echo -e "[04] Maroon   ${Maroon}\x1b[30;2m #E8A2AF $(tput sgr0)     [15] Black 3   ${Black3} #302D41 $(tput sgr0)"
echo -e "[05] Red      ${Red}\x1b[30;2m #F28FAD $(tput sgr0)     [16] Black 4   ${Black4} #575268 $(tput sgr0)"
echo -e "[06] Peach    ${Peach}\x1b[30;2m #F8BD96 $(tput sgr0)     [17] Gray 0    ${Gray0} #6E6C7E $(tput sgr0)"
echo -e "[07] Yellow   ${Yellow}\x1b[30;2m #FAE3B0 $(tput sgr0)     [18] Gray 1    ${Gray1}\x1b[30;2m #988BA2 $(tput sgr0)"
echo -e "[08] Green    ${Green}\x1b[30;2m #ABE9B3 $(tput sgr0)     [19] Gray 2    ${Gray2}\x1b[30;2m #C3BAC6 $(tput sgr0)"
echo -e "[09] Teal     ${Teal}\x1b[30;2m #B5E8E0 $(tput sgr0)     [20] White     ${White}\x1b[30;2m #D9E0EE $(tput sgr0)"
echo -e "[10] Blue     ${Blue}\x1b[30;2m #96CDFB $(tput sgr0)     [21] Lavender  ${Lavender}\x1b[30;2m #C9CBFF $(tput sgr0)"
echo -e "[11] Sky      ${Sky}\x1b[30;2m #89DCEB $(tput sgr0)     [22] Rosewater ${Rosewater}\x1b[30;2m #F5E0DC $(tput sgr0)"
echo
read -p "Pick number to copy hex code [1~22]: " sel
  if [ $sel = 1 ] ; then
    echo -e "${Flamingo}\x1b[30;2mFlamingo$(tput sgr0) copied"
    echo "#F2CDCD" | xclip -sel clip
  elif [ $sel = 2 ] ; then
    echo -e "${Mauve}\x1b[30;2mMauve$(tput sgr0) copied"
    echo "#DDB6F2" | xclip -sel clip
  elif [ $sel = 3 ] ; then
    echo -e "${Pink}\x1b[30;2mPink$(tput sgr0) copied"
    echo "#F5C2E7" | xclip -sel clip
  elif [ $sel = 4 ] ; then
    echo -e "${Maroon}\x1b[30;2mMaroon$(tput sgr0) copied"
    echo "#E8A2AF" | xclip -sel clip
  elif [ $sel = 5 ] ; then
    echo -e "${Red}\x1b[30;2mRed$(tput sgr0) copied"
    echo "#F28FAD" | xclip -sel clip
  elif [ $sel = 6 ] ; then
    echo -e "${Peach}\x1b[30;2mPeach$(tput sgr0) copied"
    echo "#F8BD96" | xclip -sel clip
  elif [ $sel = 7 ] ; then
    echo -e "${Yellow}\x1b[30;2mYellow$(tput sgr0) copied"
    echo "#FAE3B0" | xclip -sel clip
  elif [ $sel = 8 ] ; then
    echo -e "${Green}\x1b[30;2mGreen$(tput sgr0) copied"
    echo "#ABE9B3" | xclip -sel clip
  elif [ $sel = 9 ] ; then
    echo -e "${Teal}\x1b[30;2mTeal$(tput sgr0) copied"
    echo "#B5E8E0" | xclip -sel clip
  elif [ $sel = 10 ] ; then
    echo -e "${Blue}\x1b[30;2mBlue$(tput sgr0) copied"
    echo "#96CDFB" | xclip -sel clip
  elif [ $sel = 11 ] ; then
    echo -e "${Sky}\x1b[30;2mSky$(tput sgr0) copied"
    echo "#89DCEB" | xclip -sel clip
  elif [ $sel = 12 ] ; then
    echo "${Black0}Black 0$(tput sgr0) copied"
    echo "#161320" | xclip -sel clip
  elif [ $sel = 13 ] ; then
    echo "${Black1}Black 1$(tput sgr0) copied"
    echo "#1A1826" | xclip -sel clip
  elif [ $sel = 14 ] ; then
    echo "${Black2}Black 2$(tput sgr0) copied"
    echo "#1E1E2E" | xclip -sel clip
  elif [ $sel = 15 ] ; then
    echo "${Black3}Black 3$(tput sgr0) copied"
    echo "#302D41" | xclip -sel clip
  elif [ $sel = 16 ] ; then
    echo "${Black4}Black 4$(tput sgr0) copied"
    echo "#575268" | xclip -sel clip
  elif [ $sel = 17 ] ; then
    echo "${Gray0}Gray 0$(tput sgr0) copied"
    echo "#6E6C7E" | xclip -sel clip
  elif [ $sel = 18 ] ; then
    echo -e "${Gray1}\x1b[30;2mGray 1$(tput sgr0) copied"
    echo "#988BA2" | xclip -sel clip
  elif [ $sel = 19 ] ; then
    echo -e "${Gray2}\x1b[30;2mGray 2$(tput sgr0) copied"
    echo "#C3BAC6" | xclip -sel clip
  elif [ $sel = 20 ] ; then
    echo -e "${White}\x1b[30;2mWhite$(tput sgr0) copied"
    echo "#D9E0EE" | xclip -sel clip
  elif [ $sel = 21 ] ; then
    echo -e "${Lavender}\x1b[30;2mLavender$(tput sgr0) copied"
    echo "#C9CBFF" | xclip -sel clip
  elif [ $sel = 22 ] ; then
    echo -e "${Rosewater}\x1b[30;2mRosewater$(tput sgr0) copied"
    echo "#F5E0DC" | xclip -sel clip
  else
    echo "invalid choice"
fi

### eof ###
