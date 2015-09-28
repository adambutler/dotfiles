alias wheresmyheadat='git rev-parse HEAD'
alias §='bundle exec rspec'
alias §§='bundle exec rescue rspec'

# Alias ß
sitesdir=~/Sites
eval ß=$sitesdir
eval å=$sitesdir

alias chmodcheck='stat -f "%OLp"'
alias ls='gls --color=tty -la'
alias o='open'
alias o.='open .'
alias matrix='. ~/scripts/matrix.sh'
alias server='python -m SimpleHTTPServer 8080'
alias gub='hub'
alias gsha='git log -1 --pretty=oneline | sed -E "s/^([^[:space:]]+).*/\1/"'
alias vc='coffee ~/Sites/node-launcher/server.coffee'
alias psd='open -a /Applications/Adobe\ Photoshop\ CS5.1/Adobe\ Photoshop\ CS5.1.app'
alias gh='github'
alias rc='bundle exec rails console'
