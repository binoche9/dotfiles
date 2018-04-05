#!/bin/bash

# Install Homebrew
# if ! command -v brew;
# then
#   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# fi

# brew update

# Install Pygments
if [[ -z $(sudo -v) ]]; then
  sudo easy_install Pygments
fi

# Install Pathogen
if [[ ! -f ~/.vim/autoload/pathogen.vim ]]; then
  mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi

# Install Solarized for Vim
if [[ ! -d ~/.vim/bundle/vim-colors-solarized/ ]]; then
  git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
fi

# Create backups
[[ -f ~/.bash_profile ]] && mv ~/.bash_profile ~/.bash_profile.bak
[[ -f ~/.bashrc ]] && mv ~/.bashrc ~/.bashrc.bak
[[ -f ~/.profile ]] && mv ~/.profile ~/.profile.bak
[[ -f ~/.vimrc ]] && mv ~/.vimrc ~/.vimrc.bak


# Create symlinks to dotfiles
[[ ! -f ~/.bash_profile ]] && ln -s ~/dotfiles/.bash_profile ~/.bash_profile
[[ ! -f ~/.bashrc ]] && ln -s ~/dotfiles/.bashrc ~/.bashrc
[[ ! -f ~/z.sh ]] && ln -s ~/dotfiles/z.sh ~/z.sh
[[ ! -f ~/.vimrc ]] && ln -s ~/dotfiles/.vimrc ~/.vimrc
[[ ! -f ~/.gitignore ]] && ln -s ~/dotfiles/.gitignore ~/.gitignore
