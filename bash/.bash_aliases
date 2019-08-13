alias beep='tput bel'

alias bert='ssh wdc@bert'
alias ando="ssh dconner@issara.pair.com"

alias did="vim +'normal Go' +'r!date' ~/did.txt"
alias devnote="code -n ~/dev/NOTES.md"
alias pythonnote="code -n ~/dev/python-idioms.txt"
alias dotfiles="code -n ~/dotfiles"
alias editalias="vim ~/dotfiles/bash/.bash_aliases; reload"

alias ladyslipper="sftp laufuc1@lizard.dreamhost.com"

# TODO make conditional
alias temperature="/opt/vc/bin/vcgencmd measure_temp"

alias cd..='cd ..'
alias dev='cd ~/dev'
alias work='cd ~/dev/work'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# IP addresses
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

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


codeprint() {
    enscript -2rG --line-numbers -p -   --word-wrap --highlight --color=0 "$1" 2>/dev/null
}

to_pdf() {
      pstopdf -i -o ~/out.pdf && open ~/out.pdf
}
# Reload the shell (i.e. invoke as a login shell)
alias reload="exec ${SHELL} -l"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

