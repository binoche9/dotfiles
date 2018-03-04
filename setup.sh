#!/bin/sh

# Install Homebrew
if ! command -v brew;
then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

# Install Pygments
sudo easy_install Pygments

# Install Pathogen
if [[ ! -f ~/.vim/autoload/pathogen.vim ]]; then
  mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi

# Install Solarized for Vim
if [[ ! -d ~/.vim/bundle/vim-colors-solarized/ ]]; then
  git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle
fi

[[ ! -f ~/.bash_profile ]] && ln -s ~/.bash_profile ~/dotfiles/.bash_profile
[[ ! -f ~/.bashrc ]] && ln -s ~/.bashrc ~/dotfiles/.bashrc
[[ ! -f ~/z.sh ]] && ln -s ~/z.sh ~/dotfiles/z.sh
[[ ! -f ~/.vimrc ]] && ln -s ~/.vimrc ~/dotfiles/.vimrc
[[ ! -f ~/.gitignore ]] && ln -s ~/.gitignore ~/dotfiles/.gitignore
