#!/bin/env bash

# This script links all contents of the ./config/ directory to the ~/.config/ directory of your user.

link() {
  local SIMLINK_DEST
  local FILE

  for FILE in ./config/*; do
    SIMLINK_DEST="/home/$USER/.config/$(echo $FILE | cut --delimiter=/ --fields=3)"
    SIMLINK_SRC="$PWD/config/$(echo $FILE | cut --delimiter=/ --fields=3)"
    echo "linking path '$SIMLINK_SRC' to '$SIMLINK_DEST'"
    unlink $SIMLINK_DEST
    rm -rf $SIMLINK_DEST
    ln -s "$SIMLINK_SRC" "$SIMLINK_DEST"
  done
}

ln -s "$PWD/wallpapers" "/home/$USER/Pictures/wallpapers"
rm -rf "/home/$USER/.zshrc"
ln -s "$PWD/.zshrc" "/home/$USER/.zshrc"

link
