# Use bash-completion, if available
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

alias ando="ssh dconner@issara.pair.com"


export PATH=/usr/local/bin:$PATH
export GOPATH=$HOME/go;
export PATH="$GOPATH/bin:$PATH:";
export PATH="$PATH:/usr/local/opt/go/libexec/bin";

export PATH=/usr/local/anaconda3/bin:"$PATH"
