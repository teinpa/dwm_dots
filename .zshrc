HISTFILE=~/.config/slimzsh/.HISTFILE
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

autoload -Uz compinit
compinit

source "$HOME/.config/slimzsh/slim.zsh"
