#!/usr/bin/env bash

# GIT
header "Setting up GIT"
cp git/.gitignore ~/.gitignore_global
cp git/.gitconfig ~/.gitconfig
git config --global core.excludesfile "${HOME}/.gitignore_global"

# Before relying on Homebrew, check that packages can be compiled
if ! type_exists 'gcc'; then
    e_error "The XCode Command Line Tools must be installed first."
    printf "  run 'xcode-select --install' and follow the instrucctions\n"
    printf "  Then run this setup script again.\n"
    exit 1
fi

# BREW
if test ! $(which brew); then
  header "Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  header "Updating Homebrew"
  brew update
fi

# run Brewfile
brew tap Homebrew/bundle
brew bundle

source utils/utils.sh

header "Setting up mac os X"
source osx/index.sh

header "Setting VSCODE"
source vscode/index.sh

header "Copying .dotfiles"
source dotfiles/index.sh

sudo sh -c “softwareupdate -ia && reboot”

success "Your mac is going to reboot..."
