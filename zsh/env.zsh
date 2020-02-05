### Bundler Editor
export BUNDLER_EDITOR=code

### RB Env
eval "$(rbenv init --no-rehash -)"
(rbenv rehash &) 2> /dev/null

### NVM
### https://github.com/nvm-sh/nvm/issues/1978#issuecomment-452188689
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

### Ansible
if [[ -a ~/.vault_pass ]]; then
  export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass
fi
export ANSIBLE_HOST_KEY_CHECKING=False

