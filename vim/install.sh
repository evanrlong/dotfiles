#!/bin/sh
# Install script for Vim preferences

# Create neovim dotfile directory if it doesn't exist
[ -d ~/.config ] || mkdir ~/.config
[ -d ~/.config/nvim ] || mkdir ~/.config/nvim

# Symlink .vimrc to neovim locations for shared config
[ -e ~/.config/nvim/init.vim ] && rm -rf ~/.config/nvim/init.vim
ln -s ~/.vimrc ~/.config/nvim/init.vim 
