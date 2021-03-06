#!/usr/bin/env bash


install_plugins() {
    echo -ne "${BLUE}---> Installing Dotfile ===>"
    CURRENT_DIR=$(dirname "$0")

    cp "$CURRENT_DIR"/plugins/*.vim ~/.config/nvim/
    if which nvim > /dev/null; then
        echo -ne \\b"======>"
        nvim +PlugInstall +qa
        echo -ne \\b"======>"
        nvim +PlugClean +qa
    fi
    echo -e \\b"==============>${RESET}"
    echo "${GREEN}${BACKGROUND} Successfully install plugins.${RESET}"
    echo
}
