#!/bin/sh
tput setaf 2; echo "Select Linux Distro"; tput sgr0
select VAR in "Ubuntu" "Kali-Linux"; do
    case $VAR in 
        "Ubuntu" )
            sudo apt -y update && sudo apt -yV upgrade
            sudo apt-get install build-essential
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

# install brew bundle
# TODO:UbuntuのときはStarshipをインストールするようにする
tput setaf 2; echo "Do you want to install Starship ?"; tput sgr0
select VAR in "Yes" "No"; do
    case $VAR in 
        "Yes" )
            brew bundle --file '~/dotfiles/Brewfile'
            brew install starship
            break;;

        "NO" )
            brew bundle --file '~/dotfiles/Brewfile'
            break;;
    esac
done
