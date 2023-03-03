# Arcolinux-DWM

## Checklist

1. Remove the variety and conky packages using pamac. 

2. Add the nitrogen pcakage using pamac.

3. Update existing packages with pamac.

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

9. Install these packages,

```
sudo pacman -S base-devel termite helix transmission-gtk yt-dlp galculator vlc audacity
```
