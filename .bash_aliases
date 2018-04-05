# Aliases not in .bash_aliases:
#
# Git aliases are in ~/dotfiles/.bash_git
# Local aliases are in ~/.bash_local


# Open specified files in Sublime Text
# "s ." will open the current directory in Sublime
alias s='open -a "Sublime Text"'

# Color LS

colorflag="-Ggs"
alias ls="command ls -G"
alias l="ls -lF ${colorflag}" # all files, in long format
alias la="ls -laF ${colorflag}" # all files inc dotfiles, in long format
alias lsd='ls -lF ${colorflag} | grep "^d"' # only directories
alias ll="ls -al"

# Quicker navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias desktop='cd ~/Desktop'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Colored up cat!
# You must install Pygments first - "sudo easy_install Pygments"
# alias c='pygmentize -O style=monokai -f console256 -g'

alias rebash='source ~/.bash_profile'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias bashgit='vim ~/dotfiles/.bash_git'
alias bashpath='vim ~/dotfiles/.bash_path'
alias bashlocal='vim ~/.bash_local'
alias bashaliases='vim ~/dotfiles/.bash_aliases'
alias bashprofile='vim ~/.bash_profile'

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO'
