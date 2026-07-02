#!/bin/env bash

echo "Starting zsh installation & configuration..."

sudo pacman -S zsh fzf ripgrep zinit bat starship curl --needed

curl -O 

if [[ ! -d "$HOME/.config/zsh" ]]; then
  mkdir -p "$HOME/.config/zsh"
fi

if [[ ! -d "$HOME/.cache "]]; then
  mkdir -p "$HOME/.cache"
fi

if [[ ! -d "$HOME/.local/share "]]; then
  mkdir -p "$HOME/.local/share"
fi

if [[ ! -d "$HOME/.local/state "]]; then
  mkdir -p "$HOME/.local/state" 
fi

echo "zsh installation & configuration ended"
