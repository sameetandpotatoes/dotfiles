#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles # dotfiles directory
olddir=~/dotfiles_old # old dotfiles backup directory
files="vimrc vim zshrc z.sh" # list of files/folders to symlink in homedir

##########

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

function install_zsh
{
		# Check if zsh was installed already
		if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
				# Clone my oh-my-zsh repository from GitHub only if it isn't already present
                rm -rf ~/.oh-my-zsh
				git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
				# Set the default shell to zsh 
                echo -n "Setting default shell to zsh. Please enter your password when you are prompted."
                sudo chsh $USER -s $(which zsh)	# TODO for some reason this doesn't work either
		else
				# Figure out if Linux or OS X
				platform=$(uname);
				# If Linux, use apt-get
				if [[ $platform == 'Linux' ]]; then
						sudo apt install zsh	# TODO don't think this works
				# If OS X, use brew
				elif [[ $platform == 'Darwin' ]]; then
						brew install zsh
				fi
				echo -n "Installed zsh!"
				# Recall this method
				install_zsh
		fi
		echo -n "Copying theme\n"
		cp ~/dotfiles/spaceship.zsh-theme ~/.oh-my-zsh/themes/
		echo -n "Copy the below line to set the default shell to zsh\n"
		echo -n "chsh -s $(which zsh)"
		echo -n "After setting the font to Meslo LG or Hack, open a new window to see the effects\n"
}

install_zsh
