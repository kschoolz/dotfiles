#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=$HOME/dotfiles/config_files                    # dotfiles directory
olddir=$HOME/dotfiles/dotfiles_old             # old dotfiles backup directory
files="bashrc vimrc bash_profile inputrc"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Ensuring $olddir, for backups of files, exists"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in *; do
    # If $file is not symlinked to ~/dotfile/$file, do stuff
    if ! [ "$(readlink $HOME/.$file)" -ef "$dir/$file" ];
    then
        if [ -f "$HOME/.$file" ];
        then
          echo "Moving ${file} from $HOME/.${file} to $olddir"
          mv $HOME/.$file $olddir 
        fi
        echo "Creating symlink to ${file} in home directory."
        ln -s $dir/$file $HOME/.$file
    fi
done
