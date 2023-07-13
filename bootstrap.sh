#!/bin/bash

echo "Setup AWS CLI"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

echo "Setting up HomeBrew for Linux"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

chsh -s $(which zsh)

git clone git@github.com:thoughtbot/dotfiles.git ~/dotfiles
brew install rcm
env RCRC=$HOME/dotfiles/rcrc rcup
