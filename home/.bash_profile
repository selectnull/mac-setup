# MacOS is trying to be smart, please don't
export BASH_SILENCE_DEPRECATION_WARNING=1

# source .bashrc, that's my main bash rc file
[ -r ~/.bashrc ] && . ~/.bashrc

export PATH="/Users/sasha/Library/Application Support/edgedb/bin:$PATH"
