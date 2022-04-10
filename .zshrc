HISTFILE=~/.config/slimzsh/.HISTFILE
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

autoload -Uz compinit
compinit

setopt autocd
setopt extendedglob
setopt NO_NOMATCH

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
source ~/.config/slimzsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export STARSHIP_CONFIG=~/.config/starship/pastel-powerline.toml

# pacman #
alias lastins="awk '\$3 ~ /installed/' /var/log/pacman.log | tail --lines=20"
alias lastuns="awk '\$3 ~ /removed/' /var/log/pacman.log | tail --lines=20"
alias lastupg="awk '\$3 ~ /upgraded/' /var/log/pacman.log | tail --lines=20"
# alias update="sudo yay"
# alias updatea="sudo aura -Akuax"
alias clean="yay -Yc"

# convinience #
alias ls="exa --group-directories-first --icons -la"
alias v="lvim"
alias z="zathura"
alias zshalias="v ~/.config/slimzsh/aliases.zsh.local"
alias addtor="transmission-remote -a"
alias smci="sudo make clean install"
alias vkey="lvim ~/.config/sxhkd/sxhkdrc"
alias wttr="curl -s wttr.in/Seoul?format=%c+%t | sed 's/+,%//g'"
# alias wttr="dunstify `wttr1`"

# flexipatches
alias getst="git clone https://github.com/bakkeby/st-flexipatch.git"
alias getdmenu="git clone https://github.com/bakkeby/dmenu-flexipatch.git"
alias getdwm="git clone --depth=1 https://github.com/bakkeby/dwm-flexipatch.git"
alias dwmdir="cd ~/.config/suckless/"
alias makedwm="sudo rm config.h && sudo make clean install"
alias statdir="lvim ~/.config/scripts/statusbar.sh"

# git aliases
alias gitcon='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'
alias gitadd='gitcon add'
alias gitcomm='gitcon commit -m'
alias gitpush='gitcon push'
alias gitstat='gitcon status'

eval "$(starship init zsh)"
# source "$HOME/.config/slimzsh/slim.zsh"
