# omzsh-specific configs
export ZSH="/home/zoickx/.oh-my-zsh"
ZSH_THEME="lambda"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# aliases, quality of life functions
alias du="/usr/bin/du -h"
alias ls="exa --sort=type"
alias l="exa --all --long --time-style=long-iso --sort=type"
alias lt="exa --all --tree"
lt() {
  if [ "$1" != "" ]
  then exa --all --time-style=long-iso --sort=type --tree --level=$1
  else exa --all --time-style=long-iso --sort=type --tree --level=2
  fi
}
cd() { builtin cd $1 && ls }

gcmount() { gocryptfs -i 15m $1 $2 }
gcumount() { fusermount -u $1 }
alias pac-autoremove="sudo pacman -Rnsc $(pacman -Qdtq)"
ydlmp3() { youtube-dl --extract-audio --audio-format mp3 $1 }

alias ed="emacs -nw"
