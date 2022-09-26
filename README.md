# Arcolinux-Dotfiles

Basic dots for a fresh install.

## Update PGP Keys

First, log in as the root user with

```
su
```

Then run this command

```
pacman -Sy archlinux-keyring && pacman -Su
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
