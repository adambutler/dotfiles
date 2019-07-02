### Bundler Editor
export BUNDLER_EDITOR=code

### RB Env
eval "$(rbenv init --no-rehash -)"
(rbenv rehash &) 2> /dev/null

export NVM_DIR=~/.nvm
. "/usr/local/opt/nvm/nvm.sh"

### Ansible
if [[ -a ~/.vault_pass ]]; then
  export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass
fi
export ANSIBLE_HOST_KEY_CHECKING=False

