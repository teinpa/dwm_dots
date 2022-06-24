slim_path=`dirname $0`
fpath=( $slim_path $fpath )

# export PATH=~/.local/bin:$PATH

HISTFILE=$slim_path/.HISTFILE
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

# autoload -U promptinit && promptinit
# prompt pure
export STARSHIP_CONFIG=~/.config/starship/powerline.toml
export FZF_DEFAULT_OPTS='--color=bg+:#313244,bg:#1E1E2E,spinner:#Fab387,hl:#F38ba8 --color=fg:#c6d0f5,header:#F38ba8,info:#cba6f7,pointer:#Fab387 --color=marker:#Fab387,fg+:#F2CDCD,prompt:#cba6f7,hl+:#F38ba8'

autoload -Uz compinit
compinit -C

setopt autocd
setopt extendedglob
setopt NO_NOMATCH

export CLICOLOR=1
export LESSHISTFILE=-

source $slim_path/keys.zsh
source $slim_path/history.zsh
source $slim_path/completion.zsh
source $slim_path/zsh-autosuggestions/zsh-autosuggestions.zsh
source $slim_path/aliases.zsh
source $slim_path/correction.zsh
source $slim_path/sudo.plugin.zsh
source $slim_path/stack.zsh
source $slim_path/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

eval "$(starship init zsh)"

