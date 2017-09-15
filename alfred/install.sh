#!/bin/sh
# Install script for iTerm 2 preferences

pkill "Alfred 3"
rm -rf ~/Library/Application\ Support/Alfred\ 3/Alfred.alfredpreferences
ln -s ~/.dotfiles/alfred/Alfred.alfredpreferences ~/Library/Application\ Support/Alfred\ 3/
open -a "Alfred 3"
