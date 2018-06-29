# Use bash-completion, if available
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

alias ando="ssh dconner@issara.pair.com"
alias rasp16="ssh -i ~/.ssh/id_raspberry pi@192.168.200.116"


export PATH=/usr/local/bin:$PATH
export GOPATH=$HOME/go;
export PATH="$GOPATH/bin:$PATH:";
export PATH="$PATH:/usr/local/opt/go/libexec/bin";

export PATH=/usr/local/anaconda3/bin:"$PATH"
