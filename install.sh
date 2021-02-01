#!/bin/sh

echo Install zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

echo Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo Install Powerline plugin
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo Link Brewfile
ln -s mac/Brewfile ~/Brewfile

echo Link .ssh keys
ln -s ~/.private/.ssh ~/.ssh

# Install Brewfile: brew bundle install
