#!/bin/bash

if [[ ! `which brew` ]]; then
  # Install Homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Install applications from the Brewfile.
brew bundle

# Create config files
ln -svf "$PWD/git/.gitconfig" ~
ln -svf "$PWD/zsh/.alias.zsh" ~
ln -svf "$PWD/zsh/.iterm2.zsh" ~
ln -svf "$PWD/zsh/.zshrc" ~