 # ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups
export EDITOR='vim'
export VISUAL='vim'

PS1=' \W > '

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

# ls commands
alias dots='ls -a | sort'
alias lst='ls | sort'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# pacman
alias up='sudo pacman -Syyu'
alias sps='sudo pacman -S'
alias spr='sudo pacman -R'

# makepkg
alias mp='makepkg install'

# edit this file
alias brc='vim ~/.bashrc'

# clear screen
alias cls='clear'

# change ownership from root to user
alias cho='sudo chown -R $USER'

# clone a repo
alias gcl='git clone'

# use makefile to install
alias mci='sudo make clean install'

# reload this file
alias sb='source .bashrc'

# youtube downloader
alias ydl='youtube-dl'

# neofetch
alias neo='neofetch'

# run fresh binary
alias run='./a.out'

# gnu make
alias foo='make && ./bin/main'
