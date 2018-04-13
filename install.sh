#!/bin/bash
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

dir=~/dotfiles # dotfiles directory
olddir=~/dotfiles_old # old dotfiles backup directory
files="gitconfig vimrc config/fish/functions" # list of files/folders to symlink in homedir


# create dotfiles_old in homedir
echo -n "Creating $olddir to backup existing dotfiles first"
mkdir -p $olddir

# cd to dotfiles
cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory
for file in $files; do
		echo -n "Moving any existing dotfiles from ~ to $olddir"
		mv ~/.$file ~/dotfiles_old/
		# create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
		echo -n "Creating symlink to $file in home directory."
		ln -s $dir/$file ~/.$file
done
