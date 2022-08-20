export ZDOTDIR=${XDG_CONFIG_HOME}/zsh
export HISTFILE=${ZDOTDIR}/history

export PATH=~/.local/bin:$PATH

export PATH=~/.cargo/bin:$PATH
export PATH=~/.cabal/bin:$PATH
export PATH=~/.ghcup/bin:$PATH

# Wayland+Firefox
export MOZ_ENABLE_WAYLAND=1

# opam configuration
test -r /home/zoickx/.opam/opam-init/init.zsh && . /home/zoickx/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
