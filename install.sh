#!/bin/bash

set -eux

# Link alias files to home directory if not exists
if [ -L $HOME/alias ]; then 
  ln -s $HOME/.dotfiles/.alias $HOME/.alias
fi

# Set user umask to 027 for more privacy
if ( ! grep -q -E '^umask 027' $HOME/.zshrc ) ; then
  echo "umask 027" >> $HOME/.zshrc
fi

if ( ! grep -q -E '^umask 027' $HOME/.bashrc ); then
  echo "umask 027" >> $HOME/.bashrc
fi

