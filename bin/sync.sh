#!/bin/bash

echo "Syncing vimrc file"
rsync -avz -P ~/.vimrc $1:~/.vimrc

echo "Syncing vim plugins"
rsync -avz -P ~/.vim/ $1:~/.vim/
