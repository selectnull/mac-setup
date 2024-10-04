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

# setup prompt
PS1='\[\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;32m\]$(_parse_git_branch)\[\033[00m\]\$ '

# setup locale
export LC_ALL="en_US.UTF-8"

# Alias definitions.
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# Extra functions and stuff
[ -f ~/.bash_extras ] && . ~/.bash_extras

# add ~/bin to path if it exist
[ -d ~/bin ] && PATH="$HOME/bin:$PATH"

# add ~/.local/bin (used by pipx)
[ -d ~/.local/bin ] && PATH="$HOME/.local/bin:$PATH"

# setup bash completion
[ -d /opt/homebrew/bin ] && {
    eval "$(/opt/homebrew/bin/brew shellenv)"
    [ -f $(brew --prefix)/etc/bash_completion ] && . $(brew --prefix)/etc/bash_completion
}

# setup git completion
[ -f /opt/homebrew/etc/bash_completion.d ] && . /opt/homebrew/etc/bash_completion.d

# setup pyenv
# eval "$(pyenv init --path)"

# setup rye
. "$HOME/.rye/env"

# setup rust
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# setup bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH=$BUN_INSTALL/bin:$PATH

# setup ave
[ -f ~/bin/ave.sh ] && {
    export AVE_HOME=~/.venvs
    . ~/bin/ave.sh
}

## Setup google cloud SDK
if [ -f '/Users/sasha/bin/google-cloud-sdk/path.bash.inc' ]; then
    . '/Users/sasha/bin/google-cloud-sdk/path.bash.inc'
fi

export EDITOR=$(which nvim)
