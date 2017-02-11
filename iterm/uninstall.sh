#!/bin/sh
# Uninstall script for iTerm 2 preferences

pgrep -q iTerm && export ITERM_RUNNING=1

if [ $ITERM_RUNNING ]; then
  pkill iTerm
fi

defaults delete com.googlecode.iterm2
killall cfprefsd

if [ $ITERM_RUNNING ]; then
  open -a iTerm
fi
