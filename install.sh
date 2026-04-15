#!/bin/bash

set -eux

if [ ! -x "$(command -v fzf)" ]; then
  sudo dnf install -y fzf
fi

if [ ! -x "$(command -v nvim)" ]; then
  sudo dnf install -y nvim
fi

if [ ! -L $HOME/.config/nvim ]; then 
  ln -s $HOME/dotfiles/nvim $HOME/.config/
fi

rm -rf $HOME/.bashrc
ln -s $HOME/dotfiles/bash/bashrc $HOME/.bashrc
ln -s $HOME/dotfiles/bash/bashrc.d $HOME/.bashrc.d

# STARSHIP
ln -s $HOME/dotfiles/starship/starship.toml $HOME/.config/
