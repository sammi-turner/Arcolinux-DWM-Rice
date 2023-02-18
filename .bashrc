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

# LS COMMANDS
alias dots='ls -a | sort'
alias lst='ls | sort'
alias la='ls -A'

# PACMAN
alias sps='yes | sudo pacman -S'
alias spr='yes | sudo pacman -R'

# UPDATE
up() {
  sudo pacman-key --init;
  sudo pacman-key --populate;
  sudo pacman -Syyu;
}

# HELIX
alias hx='helix'

# MAKEPKG
alias mp='makepkg -si'

# EDIT THIS FILE
alias brc='helix ~/.bashrc'

# CHANGE OWNERSHIP FROM ROOT TO USER
alias cho='sudo chown -R $USER'

# CLONE A REPO
alias gcl='git clone'

# DOCKER COMMANDS
alias start='sudo systemctl start docker.service'
alias run='sudo docker run'

# INSTALL WITH MAKE
alias mci='sudo make clean install'

# RELOAD THIS FILE
alias sb='source .bashrc'

# DOWNLOAD WITH YT-DLP
alias dwebm='yt-dlp'
alias dmp4='yt-dlp -f mp4'
alias dmp3='yt-dlp -x --audio-format mp3'

# CHANGE DIRECTORY
alias cdr='cd ~/Documents/Rustlang'
alias cdg='cd ~/go/src'

# NEW RUST PROJECT
nrp() {
	cargo init $1;
	cd $1;
	rm -rf .git;
}

# CARGO RUN
alias cr='cargo run'
alias crr='cargo run --release'
alias crl='cargo run 2> cargo.log'

# GO COMMANDS
alias gmi='go mod init'
alias gin='go install'

# HELIX SHORTCUTS
alias hj='helix ~/Documents/Journal'
alias hr='helix ~/Documents/Rustlang'
alias hg='helix ~/go/src'

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

setxkbmap us
