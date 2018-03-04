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
alias c='pygmentize -O style=monokai -f console256 -g'

# Git
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m' # requires you to type a commit message
alias gco='git checkout'
alias gp='git push'
alias gpf='git push --force'
alias gb='git branch'
alias gd=gitdiff
alias gl='git log'
alias gr='git rebase'

gitdiff(){
    git diff --color $1
}

alias rebash='source ~/.bash_profile'
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias bashpath='vim ~/dotfiles/.bash_path'
alias bashlocal='vim ~/.bash_local'
alias bashaliases='vim ~/dotfiles/.bash_aliases'
alias bashprofile='vim ~/.bash_profile'

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO'
