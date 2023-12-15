export ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="robbyrussell"
plugins=(git)

if [ -f $ZSH/oh-my-zsh.sh ]; then
  source $ZSH/oh-my-zsh.sh
fi

export PAGER='most'

if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

setopt GLOB_DOTS
unsetopt SHARE_HISTORY

[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups
export EDITOR='vim'
export VISUAL='vim'

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

# PACMAN
alias sps='sudo pacman -S'
alias spr='sudo pacman -R'
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias rmlock="sudo rm /var/lib/pacman/db.lck"

# DEPENDS
depends()  {
  search=$(echo "$1")
  sudo pacman -Sii $search | grep "Required" | sed -e "s/Required By     : //g" | sed -e "s/  /\n/g"
}

# UPDATE
up() {
  sudo pacman-key --init;
  sudo pacman-key --populate;
  sudo pacman -Syyu;  
}

# PARU UPDATE
alias upall="paru -Syu --noconfirm"

# TAKE COMMAND
take() {
  mkdir $1;
  cd $1;
}

# MAKEPKG
alias mp='makepkg -si'

# EDIT THIS FILE
alias zrc='vim ~/.zshrc'

# CHANGE OWNERSHIP FROM ROOT TO USER
alias cho='sudo chown -R $USER'

# CLONE A REPO
alias gcl='git clone'

# DOCKER COMMANDS
alias start='sudo systemctl start docker.service'
alias run='sudo docker run'

# INSTALL WITH MAKE
alias mci='sudo make clean install'

# DOWNLOAD WITH YT-DLP
alias dwebm='yt-dlp'
alias dmp4='yt-dlp -f mp4'
alias dmp3='yt-dlp -x --audio-format mp3'

# DEFAULT EDITOR
export EDITOR='vim'

# OPEN THIS FILE IN VIM
alias vim='vim .zshrc'

# LS ALIASES
alias dots='ls -a | sort'
alias lst='ls | sort'
alias la='ls -A'

# C++ ALIASES
alias run='./bin/main'
alias mar='make && ./bin/main'

# GIT CLONE
alias gcl='git clone'

# REMOVE GIT FOLDER
alias rmg='rm -rf .git'

# GIT ADD-COMMIT-PUSH
# The $1 parameter is the commit message.
acp() {
  git add .;
  git commit -m $1;
  git push;
}

# YT-DLP
alias dwebm='yt-dlp'
alias dmp4='yt-dlp -f mp4'
alias dmp3='yt-dlp -x --audio-format mp3'

# NEOFETCH
alias neo='neofetch'

# STILLS
# This function uses ffmpeg.
# It generates a series of jpg images from an mp4 file.
# Its $1 parameter is the file name.
stills() {
  ffmpeg -i "$1".mp4 thumb%04d.jpg -hide_banner
}

# CLIP
# This function uses ffmpeg.
# It produces an mp4 video from a larger mp4 file.
# It has four parameters.
# $1 is the input file name.
# $2 is the start time in HH:MM:SS format.
# $3 is the clip duration in seconds.
# $4 is the output file name.
clip() {
  ffmpeg -i "$1".mp4 -ss "$2" -t "$3" "$4".mp4
}

# PLAY
# This function uses ffmpeg.
# It plays an mp4 video with the devices default media player.
# It has three parameters.
# $1 is the start time.
# $2 is the end time.
# $3 is the file name.
play() {
  ffplay -ss "$1" -t "$2" "$3".mp4
}

# PRE GIF
# This function uses ffmpeg.
# It is a helper function called by get_gif.
pre_gif() {
  ffmpeg -i "$1".mp4 -ss "$2" -t "$3" -vf "fps=10,scale=640:-1" -an "$4".mp4
}

# MAKE GIF
# This function uses ffmpeg and imagemagick.
# It is a helper function called by get_gif.
make_gif() {
  ffmpeg -i "$1".mp4 -vf "fps=10,scale=640:-1:flags=lanczos" -c:v pam -f image2pipe - | convert -delay 10 - -loop 0 -layers optimize "$1".gif
}

# GET GIF
# This function uses ffmpeg and imagemagick.
# It converts a section of an mp4 video into a gif.
# It has four parameters.
# $1 is the mp4 file name.
# $2 is the start time in HH:MM:SS format.
# $3 is the duration of the gif in seconds.
# $4 is the gif file name.
get_gif() {
  pre_gif "$1" "$2" "$3" "$4";
  make_gif "$4";
  rm "$4".mp4;
}
