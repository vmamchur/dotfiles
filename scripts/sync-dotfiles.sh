#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"
CONFIG_ITEMS=("nvim" "alacritty" "aerospace" "sketchybar")
CONFIG_DIR="$HOME/.config"

mkdir -p "$DOTFILES_DIR"

echo "Syncing config files..."
for item in "${CONFIG_ITEMS[@]}"; do
    src="$CONFIG_DIR/$item"
    dest="$DOTFILES_DIR/$item"

    if [ -d "$src" ] || [ -f "$src" ]; then
        echo "→ Copying $src to $dest"
        rm -rf "$dest"
        cp -r "$src" "$dest"
    else
        echo "Skipping $item — not found at $src"
    fi
done

