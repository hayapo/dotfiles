#/bin/sh

tput setaf 2 && echo "Installing Fish"
sudo apt-get install -y fish
ln -sf "~/dotfiles/fish" "~/.config/fish"
ln -sf "~/dotfiles/.bashrc" "~/.bashrc"
