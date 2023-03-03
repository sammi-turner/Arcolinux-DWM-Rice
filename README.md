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
base devel
helix
transmission-gtk 
yt-dlp 
galculator 
vlc 
audacity
```

3. I like to have a back-up desktop environment in case DWM breaks, so I would also install xfce4 at the terminal.

```
sudo pacman -S xfce4 xfce4-goodies
```

4. Change the default shell to zsh with

```
$ chsh -s /bin/zsh
```

Note that this change will only activate after logging back in.

5. Replace existing dotfiles with the ones in this repo.

6. Recompile DWM with the command

```
make clean install
```

7. Install the following packages from the AUR

```
dracula-gtk-theme
tela-icon-theme
```

8. Open lxappearance and choose your preferred settings.

9. Logout, then log back in.
