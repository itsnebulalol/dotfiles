#!/bin/sh
# update.sh
# Update home dotfiles

git pull

function doIt {
    # rsync the files over
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "install.sh" \
		--exclude "README.md" \
		--exclude "LICENSE.txt" \
		--exclude "scripts/" \
		-avh --no-perms . ~

    # Source the new zsh scripts
    source ~/.zshenv
    source ~/.zshrc
    source ~/.zprofile
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo ""
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
