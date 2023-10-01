#!/bin/bash
dotfiles_dir="$HOME/dotfiles"

# ln -sf ${dotfiles_dir}/.bashrc $HOME/.bashrc
# ln -sf ${dotfiles_dir}/.profile $HOME/.profile
ln -sf ${dotfiles_dir}/.hushlogin $HOME/.hushlogin
ln -sf ${dotfiles_dir}/.gitconfig $HOME/.gitconfig
ln -sf ${dotfiles_dir}/.zshrc $HOME/.zshrc



ln -sf ${dotfiles_dir}/.config/starship.toml $HOME/.config/starship.toml
ln -sf ${dotfiles_dir}/.config/nvim/ $HOME/.config/nvim
ln -sf ${dotfiles_dir}/.config/fish $HOME/.config/fish
ln -sf ${dotfiles_dir}/.config/sheldon $HOME/.config/sheldon