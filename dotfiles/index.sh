#!/usr/bin/env bash

dotfiles=(.aliases .bash_colors .bash_profile .bash_prompt .bashrc .editorconfig .exports .functions)

for i in "${dotfiles[@]}"; do
	rm -rf ~/$i
	ln -s .dotfiles/$i ~
done

# Install dotfiles
source ~/.bash_profile
