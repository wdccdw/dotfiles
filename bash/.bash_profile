# Use bash-completion, if available
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

alias ando="ssh dconner@issara.pair.com"
alias rasp16="ssh -i ~/.ssh/id_raspberry pi@192.168.200.116"
alias rasp17="ssh -i ~/.ssh/id_raspberry pi@192.168.200.117"
alias rasp18="ssh -i ~/.ssh/id_raspberry pi@192.168.200.118"
alias rasp19="ssh -i ~/.ssh/id_raspberry pi@192.168.200.119"
alias rasp20="ssh -i ~/.ssh/id_raspberry pi@192.168.200.120"


alias did="vim +'normal Go' +'r!date' ~/did.txt"
alias devnote="code -n ~/dev/NOTES.md"
alias dotfiles="code -n ~/dotfiles"

alias ladyslipper="sftp laufuc1@lizard.dreamhost.com"

export PATH=/usr/local/bin:$PATH
export GOPATH=$HOME/go;
export PATH="$GOPATH/bin:$PATH:";
export PATH="$PATH:/usr/local/opt/go/libexec/bin";

export PATH=/usr/local/anaconda3/bin:"$PATH"
