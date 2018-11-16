#!/usr/bin/env bash

echo "Installing dotfiles"

DOTFILES_LOCATION=$HOME/.dotfiles

echo -e "\nCreating dotfile symlinks"
echo "===================================="
DOTFILES=`find ${DOTFILES_LOCATION} -name '*.symlink'`

for file in $DOTFILES ; do
    target="${HOME}/.`basename ${file} '.symlink'`"
    if [ -e $target ]; then
        echo "${target} alredy exists ..... skipping"
    else
        echo "Creating symlink for $file"
        ln -s $file $target
    fi
done
