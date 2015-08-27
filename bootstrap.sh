#!/bin/bash
############################
# bootstrap.sh
# This script creates symlinks from the home directory to any desired dotfiles in ${HOME}/.dotfiles
############################

########## Variables

backup=${HOME}/.dotfiles.backup     # old dotfiles backup directory

##########
# Create .dotfiles.backup in the home directory
echo "Creating $backup for backup of any existing dotfiles in the home directory"
mkdir -p $backup
mv ~/.vimrc $backup

# Create symlinks for Vim files
echo "Creating symlink to vim files in the home directory."
ln -s $PWD/vim/vimrc $HOME/.vimrc

# Set up Vundle
rm -rf ~/.vim
echo "Cloning Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
