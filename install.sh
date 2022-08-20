#!/bin/sh

[ "${SHELL##/*/}" != "zsh" ] && echo 'You might need to change default shell to zsh: `chsh -s /bin/zsh`'

# Ask for sudo
sudo -v

# Let's move to the home directory
cd ~

# Install Xcode command line tools and grab the repository
xcode-select --install
[ ! -d ~/dotfiles ] && git clone --recursive https://github.com/itsnebulalol/dotfiles.git
cd dotfiles

# Let's start the install scripts
sh scripts/update.sh
sh scripts/settings.sh
sh scripts/software.sh
