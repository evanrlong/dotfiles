#!/bin/sh
# Uninstall script for iTerm 2 preferences

defaults delete com.googlecode.iterm2
killall cfprefsd
