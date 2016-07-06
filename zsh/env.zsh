### Java
export JAVA_HOME=$(/usr/libexec/java_home)

### Bundler Editor
export BUNDLER_EDITOR=s

eval "$(rbenv init -)"
eval "$(/Users/adambutler/.simple/bin/simple init -)"

source $(brew --prefix nvm)/nvm.sh

### Ansible
if [[ -a ~/.vault_pass ]]; then
  export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass
fi
export ANSIBLE_HOST_KEY_CHECKING=False
