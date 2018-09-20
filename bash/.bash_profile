# Use bash-completion, if available
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# the basics
: ${HOME=~}
: ${LOGNAME=$(id -un)}
: ${UNAME=$(uname)}


# complete hostnames from this file
: ${HOSTFILE=~/.ssh/known_hosts}

# readline config
: ${INPUTRC=~/.inputrc}

# ----------------------------------------------------------------------
#  SHELL OPTIONS
# ----------------------------------------------------------------------

# bring in system bashrc
if [ -r /etc/bashrc ]; then
    . /etc/bashrc
fi

# notify of bg job completion immediately
set -o notify

# shell opts. see bash(1) for details
shopt -s cdspell                 >/dev/null 2>&1
shopt -s extglob                 >/dev/null 2>&1
shopt -s histappend              >/dev/null 2>&1
shopt -s hostcomplete            >/dev/null 2>&1
shopt -s interactive_comments    >/dev/null 2>&1
shopt -u mailwarn                >/dev/null 2>&1
shopt -s no_empty_cmd_completion >/dev/null 2>&1

# fuck that you have new mail shit
unset MAILCHECK

# PAGER
if [ -n "$(command -v less)" ]; then
    PAGER="less -FirSwX"
    MANPAGER="less -FiRswX"
else
    PAGER=more
    MANPAGER="$PAGER"
fi
export PAGER MANPAGER

# ~/.shenv.$HOSTNAME is used as a machine specific ~/.bashrc
if [ -r ~/.shenv.${HOSTNAME} ]; then
    . ~/.shenv.${HOSTNAME}
fi

if [ -r ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi



export GOPATH=$HOME/go;
export PATH="$GOPATH/bin:$PATH";
#export PATH="$PATH:/usr/local/opt/go/libexec/bin";

#export PATH=/usr/local/anaconda3/bin:"$PATH"
export PATH=/usr/local/bin:$PATH