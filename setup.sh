#!/usr/bin/env bash

# GIT
cp git/.gitignore ~/.gitignore_global
cp git/.gitconfig ~/.gitconfig
git config --global core.excludesfile "${HOME}/.gitignore_global"

# BREW
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# run Brewfile
brew tap Homebrew/bundle
brew bundle

source utils/utils.sh

source osx/index.sh

source vscode/index.sh

source dotfiles/index.sh

sudo sh -c “softwareupdate -ia && reboot”
