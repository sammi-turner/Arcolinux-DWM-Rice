# Arcolinux-DWM

## Checklist

1. Update packages with pamac.

2. Change the default shell to Zsh with

```
$ chsh -s /bin/zsh
```

3. Logout, then log back in.

4. Replace existing dotfiles with the ones in this repo.

5. Recompile DWM with the command

```
make clean install
```

6. Logout, then log back in.

7. To install some useful packages, enter

```
sudo pacman -S base-devel nitrogen termite helix transmission-gtk yt-dlp galculator vlc audacity
```

8. Remove variety and conky packages using pamac. 
