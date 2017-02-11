#!/bin/sh
# Install script for iTerm 2 preferences

pgrep -q iTerm && export ITERM_RUNNING=1

if [ $ITERM_RUNNING ]; then
	echo "test"
  pkill iTerm
fi

defaults delete com.googlecode.iterm2
rm ~/Library/Preferences/com.googlecode.iterm2.plist
cp ~/.dotfiles/iterm/com.googlecode.iterm2.plist.default ~/Library/Preferences/com.googlecode.iterm2.plist
defaults read com.googlecode.iterm2
killall cfprefsd

if [ $ITERM_RUNNING ]; then
  open -a iTerm
fi
