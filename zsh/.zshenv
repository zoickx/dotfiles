# emacs as in-terminal editor
export EDITOR="/bin/emacs -nw"

# add ~/.bin to PATH
export PATH=$PATH:$HOME/.bin
export PATH=$PATH:$HOME/.cargo/bin

# OPAM configuration
. /home/zoickx/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
