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

alias beep='tput bel'

alias ando="ssh dconner@issara.pair.com"
alias rasp16="ssh -i ~/.ssh/id_raspberry pi@192.168.200.116"
alias rasp17="ssh -i ~/.ssh/id_raspberry pi@192.168.200.117"
alias rasp18="ssh -i ~/.ssh/id_raspberry pi@192.168.200.118"
alias rasp19="ssh -i ~/.ssh/id_raspberry pi@192.168.200.119"
alias rasp20="ssh -i ~/.ssh/id_raspberry pi@192.168.200.120"
alias raspi-va="ssh -i ~/.ssh/id_raspberry pi@192.168.200.190"
alias pihole="ssh -i ~/.ssh/id_raspberry pi@192.168.200.113"

alias did="vim +'normal Go' +'r!date' ~/did.txt"
alias devnote="code -n ~/dev/NOTES.md"
alias dotfiles="code -n ~/dotfiles"

alias ladyslipper="sftp laufuc1@lizard.dreamhost.com"

export PATH=/usr/local/bin:$PATH
export GOPATH=$HOME/go;
export PATH="$GOPATH/bin:$PATH";
export PATH="$PATH:/usr/local/opt/go/libexec/bin";

export PATH=/usr/local/anaconda3/bin:"$PATH"
