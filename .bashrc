# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups
export EDITOR='helix'
export VISUAL='helix'

PS1=' \W \A > '

if [ -d "$HOME/.bin" ] ;
    then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
    then PATH="$HOME/.local/bin:$PATH"
fi

# ls commands
alias dots='ls -a | sort'
alias lst='ls | sort'
alias la='ls -A'

# pacman
alias sps='yes | sudo pacman -S'
alias spr='yes | sudo pacman -R'

# update
up() {
    sudo pacman-key --init;
    sudo pacman-key --populate;
    sudo pacman -Syyu;
}

# helix
alias hx='helix'

# makepkg
alias mp='makepkg -si'

# edit this file
alias brc='helix ~/.bashrc'

# change ownership from root to user
alias cho='sudo chown -R $USER'

# clone a repo
alias gcl='git clone'

# use makefile to install
alias mci='sudo make clean install'

# reload this file
alias sb='source .bashrc'

# download with yt-dlp
alias dwebm='yt-dlp'
alias dmp4='yt-dlp -f mp4'
alias dmp3='yt-dlp -x --audio-format mp3'

# neofetch
alias neo='neofetch'

# take command from mac os
take() {
    mkdir $1;
    cd $1;
}
