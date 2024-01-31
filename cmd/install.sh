#!/bin/bash
tput setaf 2; echo "Select Linux Distro"; tput sgr0
select VAR in "Ubuntu" "Kali-Linux"; do
    case $VAR in 
        "Ubuntu" )
            sudo apt -y update && sudo apt -yV upgrade
            sudo apt-get install build-essential procps curl file git
            break;;

        "Kali-Linux" )
            sudo apt -y update && sudo apt -yV upgrade
            sudo apt install -y kali-linux-default
            break;;
    esac
done

# install Rust 
tput setaf 2; echo "Install Rust"; tput sgr0
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install Go
wget "https://go.dev/dl/$(curl 'https://go.dev/VERSION?m=text').linux-amd64.tar.gz"
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go*.linux-amd64.tar.gz

# install Linuxbrew
tput setaf 2; echo "Install Linuxbrew"; tput sgr0
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.zprofile
ln -sf $HOME/dotfiles/.zprofile $HOME/.zprofile

# install brew bundle
tput setaf 2; echo "Install brew bundle"; tput sgr0
brew bundle --file "$HOME/dotfiles/Brewfile"

# install nvm
tput setaf 2; echo "Install nvm(node version manager)"; tput sgr0
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
