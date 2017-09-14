### Bundler Editor
export BUNDLER_EDITOR=atom

### RB Env
eval "$(rbenv init --no-rehash -)"
(rbenv rehash &) 2> /dev/null

export NVM_DIR=~/.nvm
nvm() {
  . "$(brew --prefix nvm)/nvm.sh"
  nvm "$@"
}

### Ansible
if [[ -a ~/.vault_pass ]]; then
  export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass
fi
export ANSIBLE_HOST_KEY_CHECKING=False
