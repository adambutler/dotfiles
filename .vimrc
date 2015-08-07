set runtimepath+=~/.dotfiles/vimrc

source ~/.dotfiles/vimrc/vimrcs/basic.vim
source ~/.dotfiles/vimrc/vimrcs/filetypes.vim
source ~/.dotfiles/vimrc/vimrcs/plugins_config.vim
source ~/.dotfiles/vimrc/vimrcs/extended.vim

cmap w!! w !sudo tee > /dev/null %
