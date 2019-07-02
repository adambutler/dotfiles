### Bundler Editor
export BUNDLER_EDITOR=code

### RB Env
eval "$(rbenv init --no-rehash -)"
(rbenv rehash &) 2> /dev/null

### NVM
### https://github.com/nvm-sh/nvm/issues/1978#issuecomment-452188689
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh" --no-use  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

### Ansible
if [[ -a ~/.vault_pass ]]; then
  export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass
fi
export ANSIBLE_HOST_KEY_CHECKING=False

