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
alias pythonnote="code -n ~/dev/python-idioms.txt"
alias dotfiles="code -n ~/dotfiles"
alias editalias="vim ~/dotfiles/bash/.bash_aliases; reload"

alias ladyslipper="sftp laufuc1@lizard.dreamhost.com"

alias cd..='cd ..'
alias dev='cd ~/dev'
alias work='cd ~/dev/work'

# Canonical hex dump; some systems have this symlinked
command -v hd > /dev/null || alias hd="hexdump -C"

# macOS has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

# macOS has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"


# JavaScriptCore REPL
jscbin="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc";
[ -e "${jscbin}" ] && alias jsc="${jscbin}";
unset jscbin;

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'



# Reload the shell (i.e. invoke as a login shell)
alias reload="exec ${SHELL} -l"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

