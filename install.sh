#!/bin/env bash

echo "Starting zsh installation & configuration..."

sudo pacman -S zsh fzf fd ripgrep eza zinit bat starship curl jq --needed

sudo curl -O --output-dir /etc/zsh https://raw.githubusercontent.com/TimesDawn/zsh-config/refs/heads/main/zshenv

if [[ ! -d "$HOME/.config/zsh" ]]; then
  mkdir -p "$HOME/.config/zsh"
fi

if [[ ! -d "$HOME/.cache/zsh" ]]; then
  mkdir -p "$HOME/.cache/zsh"
fi

if [[ ! -d "$HOME/.local/share/zsh" ]]; then
  mkdir -p "$HOME/.local/share/zsh"
fi

if [[ ! -d "$HOME/.local/state/zsh" ]]; then
  mkdir -p "$HOME/.local/state/zsh" 
fi

for url in $(curl -s https://api.github.com/repos/TimesDawn/zsh-config/contents/zsh | jq -r '.[] | select(.type=="file") | .download_url'); do
    curl -sO --output-dir "$HOME/.config/zsh" "$url"
done

echo "zsh installation & configuration ended"
