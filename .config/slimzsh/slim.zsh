slim_path=`dirname $0`
fpath=( $slim_path $fpath )

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export PATH=~/.local/bin:$PATH

HISTFILE=$slim_path/.HISTFILE
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

# autoload -U promptinit && promptinit
# prompt pure
# autoload -U colors && colors

# setopt promptsubst

# export STARSHIP_CONFIG=~/.config/starship/bubble.toml

export FZF_DEFAULT_OPTS='--color=bg+:#414868,bg:#1a1b26,spinner:#ff9e64,hl:#f7768e --color=fg:#c0caf5,header:#f7768e,info:#bb9af7,pointer:#ff9e64 --color=marker:#ff9e64,fg+:#cfc9c2,prompt:#bb9af7,hl+:#f7768e'

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
source $slim_path/powerlevel10k/powerlevel10k.zsh-theme


# eval "$(starship init zsh)"
[[ ! -f $slim_path/.p10k.zsh ]] || source $slim_path/.p10k.zsh

