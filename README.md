# Arcolinux-Dotfiles

Basic dots for a fresh install.

## Update PGP Keys

Enter the following commands.

```
sudo pacman-key --init
sudo pacman-key --populate
```

## Update package manager

To update your packages, enter

```
sudo pacman -Syyu
```

## Package checklist

A few packages that I use all the time are not installed by default. To install them, enter

```
sudo pacman -S yay transmission-gtk yt-dlp base-devel helix git kcalc audacity ranger cava
```
