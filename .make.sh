#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ${HOME}/.dotfiles
############################

########## Variables

dir=${HOME}/.dotfiles                    # dotfiles directory
olddir=${HOME}/.dotfiles_old             # old dotfiles backup directory
zshfiles="zshrc oh-my-zsh" #list of all ZSH related files
vimfiles="vimrc vim" #list of all Vim related files
allfiles="$vimfiles $zshfiles"

##########

# create .dotfiles_old in the home directory
echo "Creating $olddir for backup of any existing dotfiles in the home directory"
mkdir -p $olddir
echo "...done"

# move any existing dotfiles in the home directory to dotfiles_old directory
for file in $allfiles; do
  echo "Moving any existing dotfiles from home directory to $olddir"
  mv ${HOME}/.$file ${HOME}/$olddir
done

# Create symlinks for ZSH files
for file in $zshfiles; do
echo "Creating symlink to $file in the home directory."
  ln -s $dir/zsh/$file ${HOME}/.$file
done

# Create symlinks for Vim files
for file in $vimfiles; do
echo "Creating symlink to $file in the home directory."
  ln -s $dir/vim/$file ${HOME}/.$file
done
