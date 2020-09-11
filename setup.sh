#!/bin/bash
############################
# This script creates symlinks from the home directory to any desired dotfiles
# in ~/.machine-setup
############################

########## Variables

# setup directory
dir=~/.machine-setup 
# old dotfiles backup directory
olddir=~/.old_dotfiles 
# list of files to symlink in homedir
files=".gitconfig .vimrc .zshrc .tmux.conf"

##########

# create backup directory in homedir
create_backup_dir() {
  if [ ! -d $olddir ]; then
    echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
    mkdir -p $olddir
    echo "done"
  fi
}

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to old dotfiles directory, then create
# symlinks from the homedir to any files in the setup directory specified in
# $files
for file in $files; do
  # If the file doesn't exist
  if [ ! -e ~/$file ]; then
    echo "~/$file doesn't exist, linking to versioned one"
    ln -s $dir/$file ~/$file
  # If it's not a symlink
  elif [ ! -L ~/$file ]; then
    create_backup_dir
    echo "Moving $file from ~ to $olddir"
    mv ~/$file $olddir
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
  fi
done

# Setup submodules and link them

git submodule update --init

ln -sf $dir/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins
ln -sf $dir/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins
mkdir -p ~/.config/alacritty/
ln -sf $dir/alacritty.yml ~/.config/alacritty
ln -sf $dir/starship.toml ~/.config/
mkdir -p ~/.config/bat/
ln -sf $dir/bat-config.conf ~/.config/bat/config

if [[ "$OSTYPE" == "darwin"* ]]; then
  mkdir -p ~/Library/Application\ Support/jesseduffield/lazygit
  ln -sf $dir/lazygit-config.yml ~/Library/Application\ Support/jesseduffield/lazygit/config.yml
else
  mkdir -p ~/.config/jesseduffield/lazygit
  ln -sf $dir/lazygit-config.yml ~/.config/jesseduffield/lazygit/config.yml
fi

