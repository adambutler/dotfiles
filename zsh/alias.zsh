alias wheresmyheadat='git rev-parse HEAD'
alias §='bundle exec rspec'
alias §§='bundle exec rescue rspec'

# Alias ß
sitesdir=~/Sites
eval ß=$sitesdir
eval å=$sitesdir

alias chmodcheck='stat -f "%OLp"'
alias o='open'
alias o.='open .'
alias matrix='. ~/scripts/matrix.sh'
alias server='python -m SimpleHTTPServer 8080'
alias gub='hub'
alias gsha='git log -1 --pretty=oneline | sed -E "s/^([^[:space:]]+).*/\1/"'
alias vc='coffee ~/Sites/node-launcher/server.coffee'
alias psd='open -a /Applications/Adobe\ Photoshop\ CS5.1/Adobe\ Photoshop\ CS5.1.app'
alias s='subl'
alias a='atom'
alias x='gitx'
alias hl='pbpaste | highlight --syntax=js -O rtf | pbcopy'
alias gs='git status'
alias grm='git rm'
alias grmc='git rm --cached'
alias gh='github'
alias rc='bundle exec rails console'
alias dropitlikeitshot="ps xa | grep postgres: | grep $POSTGRESQL_DATABASE | grep -v grep | awk '{print (}' | sudo xargs kill)"
alias grhh='git reset HEAD --hard'
alias rst='rm tmp/restart.txt'
alias rsv='rails server'
unalias grv 
