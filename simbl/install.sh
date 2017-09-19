#!/bin/sh
# Install script for mySIMBL preferences

rm -rf "~/Library/Application Support/SIMBL/Plugins"
rm -rf "~/Library/Application Support/SIMBL/Plugins (Disabled)"
ln -s "$DOTFILES_DIR/mysimbl/plugins" "~/Library/Application Support/SIMBL/Plugins"
ln -s "$DOTFILES_DIR/mysimbl/plugins_disabled" "~/Library/Application Support/SIMBL/Plugins (Disabled)"
