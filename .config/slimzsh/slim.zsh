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
export STARSHIP_CONFIG=~/.config/starship/pastel-powerline.toml

autoload -Uz compinit

# for dump in ~/.zcompdump(N.mh+24); do
#    compinit
# done

compinit -C

setopt autocd
setopt extendedglob
setopt NO_NOMATCH

export CLICOLOR=1
export LESSHISTFILE=-

source $slim_path/keys.zsh
source $slim_path/history.zsh
source $slim_path/completion.zsh
# source $slim_path/zsh-autosuggestions/zsh-autosuggestions.zsh
source $slim_path/aliases.zsh
source $slim_path/correction.zsh
source $slim_path/stack.zsh
source $slim_path/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# if command -v fasd >/dev/null 2>&1; then
#   eval "$(fasd --init zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install posix-alias)"
# fi

eval "$(starship init zsh)"

