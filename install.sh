#!/bin/bash



if [[ $# -eq 1 && "$1" == "link" ]]; then
    #Git and Link
    # Set paths
    NVIM_CONFIG_DIR="$HOME/.config/nvim"
    DOTFILES_NVIM_DIR="$HOME/.dotfiles/nvim"

    # Remove existing Neovim config if it exists
    if [ -d "$NVIM_CONFIG_DIR" ]; then
        echo "Removing existing Neovim config..."
        rm -rf "$NVIM_CONFIG_DIR"
    fi

    # Recreate the Neovim config directory
    mkdir -p "$NVIM_CONFIG_DIR"

    # Link each file individually
    echo "Linking Neovim config files from dotfiles..."
    for file in "$DOTFILES_NVIM_DIR"/*; do
        ln -s "$file" "$NVIM_CONFIG_DIR/$(basename "$file")"
    done

    echo "Neovim setup complete!"
    ln -s .vimrc ~/.vimrc
else
    #No git
    curl "https://raw.githubusercontent.com/CarsonKrog/dotfiles/refs/heads/main/.vimrc"
fi

