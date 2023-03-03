# Arcolinux-DWM

## Download ISO

[Arcolinux torrents](https://fosstorrents.com/distributions/arcolinux/)

## Keybinds

Are listed in the cheatsheet.

## Post install checklist

1. Remove the following packages using pamac.

```
variety
conky
```

2. Add the following packages using pamac.

```
helix
transmission-gtk 
yt-dlp 
galculator 
vlc 
audacity
```

3. I like to have a back-up desktop environment in case dwm breaks, so I would also install the following at the terminal

```
sudo pacman -S xfce4 xfce4-goodies
```

4. Change the default shell to zsh with

```
$ chsh -s /bin/zsh
```

5. Logout, then log back in.

6. Replace existing dotfiles with the ones in this repo.

7. Recompile DWM with the command

```
make clean install
```

8. Logout, then log back in.

9. Install the following packages from the AUR

```
dracula-gtk-theme
tela-icon-theme
```
