#!/bin/bash

if ! command -v stow &> /dev/null; then
    echo "GNU Stow not found. Installing via Homebrew..."

    if ! command -v brew &> /dev/null; then
        echo "Error: Homebrew is not installed. Please install Homebrew first."
        exit 1
    fi

    brew update
    brew install stow

    if command -v stow &> /dev/null; then
        echo "GNU Stow installed successfully!"
    else
        echo "Error: Failed to install GNU Stow"
        exit 1
    fi
else
    echo "GNU Stow is already installed"
fi

# stow -vSt ~ keyboard-layouts nvim skhd tmux yabai zsh-macos
stow -vSt ~ nvim skhd tmux yabai zsh-macos

