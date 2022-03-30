### Bundler Editor
export BUNDLER_EDITOR=code
export EDITOR="code -w"

### Ansible
if [[ -a ~/.vault_pass ]]; then
  export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass
fi
export ANSIBLE_HOST_KEY_CHECKING=False

export HUSKY=0
