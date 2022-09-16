# If not running interactively, don't do anything
# case $- in
#     *i*) ;;
#     *) return;;
# esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

EDITOR=/usr/local/bin/nvim

# set prompt
_parse_git_branch() {
    local txt
    txt=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
    [ ! -z "$txt" ] && echo " ($txt)"
}

_split_dir() (
    local oldifs
    oldifs="$IFS"
    IFS='/'
    IFS="$oldifs"
)

_show_dir() {
    local dir
    if [ $(pwd) = "$HOME" ]; then
        echo '~'
        return 0
    fi
    dir=$(realpath $(pwd) --relative-base="$HOME")
    if [[ $dir == \.* ]]; then
        dir=$(pwd)
    else
        dir="~/$dir"
    fi
    echo "$dir"
}

# PS1='\[\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;34m\]$(_show_dir)\[\033[01;32m\]$(_parse_git_branch)\[\033[00m\]\$ '
PS1='\[\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;32m\]$(_parse_git_branch)\[\033[00m\]\$ '
export LC_ALL="en_US.UTF-8"

# Alias definitions.
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# Extra functions and stuff
[ -f ~/.bash_extras ] && . ~/.bash_extras

# add ~/bin to path if it exist
[ -d ~/bin ] && PATH="$HOME/bin:$PATH"

# setup bash completion
[ -f $(brew --prefix)/etc/bash_completion ] && . $(brew --prefix)/etc/bash_completion

# setup pyenv
eval "$(pyenv init --path)"

# setup rust
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# setup ave
[ -f /usr/loca/bin/ave.sh ] && {
    export WORKON_HOME=~/.venvs
    . /usr/local/bin/ave.sh
}

# setup google cloud SDK
[ -d ~/bin/google-cloud-sdk/bin ] && PATH="$HOME/bin/google-cloud-sdk/bin:$PATH"
