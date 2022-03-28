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


# do not create ~/.lesshst
export LESSHISTFILE="/dev/null"

# increase ZSH history size..substantially
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE



###########
### ALIASES
###########

alias aura='aura --color=always'
alias cal='cal -m'
alias diff='diff --unified --color'
alias now="date +\(%a\)\ %Y-%m-%d\ %H:%M\ %Z; TZ=":America/Los_Angeles" date +\(%a\)\ %Y-%m-%d\ %H:%M\ %Z; echo; cal"
alias how=tldr # tldr is just so unpleasant to type :)

### Rust fleet
alias bat='bat --color=always'
alias ps='procs'
alias du="dua"

# Cool `ls`
alias l="exa --long --time-style=long-iso --sort=type"
alias la="exa --all --long --time-style=long-iso --sort=type"
alias ls="exa --sort=type"
alias lt="exa --all --tree"
alias lt2="exa --all --tree --level=2"
cd() { builtin cd "$@"; echo "Also try [j]!" }
j() {
    __zoxide_z "$@"
    exa --long --time-style=long-iso --sort=type
}

alias startx="echo \"Are you sure? Run [really_startx] to start X.\"" #
alias really_startx=/usr/bin/startx ~/dotfiles/xinitrc                # Slowly migrating to Wayland...


### base16-fzf
## stolen from [https://github.com/fnune/base16-fzf]

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS"\
" --color=bg+:{{base01}},bg:{{base00}},spinner:{{base0C}},hl:{{base0D}}"\
" --color=fg:{{base04}},header:{{base0D}},info:{{base0A}},pointer:{{base0C}}"\
" --color=marker:{{base0C}},fg+:{{base06}},prompt:{{base0A}},hl+:{{base0D}}"
