###########
### ANTIGEN
###########

ADOTDIR=${XDG_CONFIG_HOME}/zsh/antigen
ANTIGEN=${ADOTDIR}/antigen.zsh

if [[ ! -f ${ANTIGEN} ]]; then
    echo "Getting the Antigen ZSH plugin manager..."
    echo "curl -L git.io/antigen -o ${ANTIGEN} --create-dirs"
    curl -L git.io/antigen -o ${ANTIGEN} --create-dirs 
fi

typeset -a ANTIGEN_CHECK_FILES=(${ZDOTDIR}/.zshrc)

source ${ANTIGEN}



###########
### PLUGINS
###########

antigen use oh-my-zsh

antigen bundle git
antigen bundle colored-man-pages
antigen bundle fzf
antigen bundle Aloxaf/fzf-tab
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

antigen apply

## SKIM:
# 1) https://github.com/Aloxaf/fzf-tab/issues/228



##########
### CONFIG
##########

# [[https://starship.rs]]
eval "$(starship init zsh)"

# [[https://github.com/ajeetdsouza/zoxide]]
eval "$(zoxide init zsh --cmd j)"

# editor
export EDITOR=vis

# do not create ~/.lesshst
export LESSHISTFILE="/dev/null"

# increase ZSH history size..substantially
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE

## [[https://github.com/lotabout/skim]]
export FZF_BASE=/usr/share/skim

# WARN: neither of these work properly;
#       > alias fzf=sk
#       > fzf() { sk }
#       > sk $@
#
#       Instead: [ln -s /usr/bin/sk ~/.local/bin/fzf]

## base16
## stolen from [https://github.com/base16-project/base16-fzf]
export SKIM_DEFAULT_OPTS="$SKIM_DEFAULT_OPTS"\
" --color=bg+:{{base01}},bg:{{base00}},spinner:{{base0C}},hl:{{base0D}}"\
" --color=fg:{{base04}},header:{{base0D}},info:{{base0A}},pointer:{{base0C}}"\
" --color=marker:{{base0C}},fg+:{{base06}},prompt:{{base0A}},hl+:{{base0D}}"



###########
### ALIASES
###########

alias aura='aura --color=always'
alias cal='cal -m'
alias diff='diff --unified --color'
alias now="date +\(%a\)\ %Y-%m-%d\ %H:%M\ %Z; TZ=":America/Los_Angeles" date +\(%a\)\ %Y-%m-%d\ %H:%M\ %Z; echo; cal"
alias how=tldr # tldr is just so unpleasant to type :)
alias jos=joshuto # same
alias jmtpfs="echo Check out [android-file-transfer] instead"

### Rust fleet
alias bat='bat --color=always'
alias ps='procs'
alias du="dua"

# Cool [ls]
alias l="exa --long --time-style=long-iso --sort=type"
alias la="exa --all --long --time-style=long-iso --sort=type"
alias ls="exa --sort=type"
alias lt="exa --sort=type --all --tree"
alias lt2="exa --sort=type --all --tree --level=2"

# Cool [cd]
j () {
    __zoxide_z "$@"
    exa --long --time-style=long-iso --sort=type
}
