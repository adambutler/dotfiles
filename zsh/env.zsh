### Java
export JAVA_HOME=$(/usr/libexec/java_home)

### Bundler Editor
export BUNDLER_EDITOR=s

eval "$(rbenv init -)"
eval "$(/Users/adambutler/.simple/bin/simple init -)"

source $(brew --prefix nvm)/nvm.sh
