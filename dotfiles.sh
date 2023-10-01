#!/bin/bash

BIN_NAME="$(basename "$0")"
COMMAND_NAME=$1

sub_help () {
    echo "Usage: $BIN_NAME <command>\n"
    echo "Commands:"
    echo "   help               This help message"
    echo "   link           Creating Symblic Links"
    echo "   install            Install basic setup for Ubuntu"
    echo "   fish               Install fish plugin"
    echo "   node               Install node.js with nvm"
}

sub_link () {
    sudo chmod +x cmd/link.sh
    bash cmd/link.sh
}

sub_install () {
    sudo chmod +x cmd/install.sh
    bash cmd/install.sh
}

sub_fish () {
    sudo chmod +x cmd/fish.sh
    bash cmd/fish.sh
}

sub_node() {
    sudo chmod +x cmd/node.sh
    bash cmd/node.sh
}



case $COMMAND_NAME in
    "" | "-h" | "--help")
		sub_help
		;;
    *)
        shift
        "sub_${COMMAND_NAME}" "$@"
        if [ $? = 127 ]; then
            echo "'$COMMAND_NAME' is not a known command or has errors." >&2
            sub_help
            exit 1
        fi
        ;;
esac
