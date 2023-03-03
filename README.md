# Arcolinux-DWM

## Checklist

1. Update packages with pamac.

2. Change the default shell to Zsh with

```
$ chsh -s /bin/zsh
```

Logout, then log back in.

3. Replace existing dotfiles with the ones in this repo.

4. Recompile DWM with the command

```
make clean install
```

Logout, then log back in.

4. To install some useful packages, enter

```
sudo pacman -S base-devel nitrogen termite helix transmission-gtk yt-dlp galculator vlc audacity
```

5. Remove variety and conky packages using pamac. 
