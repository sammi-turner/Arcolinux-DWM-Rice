# Arcolinux-DWM

## Checklist

1. Remove the variety and conky packages using pamac. 

2. Update existing packages with pamac.

3. Change the default shell to zsh with

```
$ chsh -s /bin/zsh
```

4. Logout, then log back in.

5. Replace existing dotfiles with the ones in this repo.

6. Recompile DWM with the command

```
make clean install
```

7. Logout, then log back in.

8. To install some useful packages, enter

```
sudo pacman -S base-devel nitrogen termite helix transmission-gtk yt-dlp galculator vlc audacity
```
