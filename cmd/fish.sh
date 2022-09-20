#!/bin/sh

# fish init
if has "fisher" ; then
    curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fi
# plugin install
copy -f ~/dotfiles/.config/fish/fish_plugins ~/dotfiles/.config/fish/fishfile
