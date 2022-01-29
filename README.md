# Arcolinux-Dotfiles

Basic dots for a fresh install of ArcolinuxB (KDE Plasma edition).

## Upgrade PGP Keys

Enter the following command on a fresh install.

```
sudo pacman -Sy archlinux-keyring && pacman -Su
```

Then update your packages.

```
sudo pacman -Syyu
```

## Tweak Tool

Using the 'Autostart' tab on the 'Arcolinux Tweak Tool', I prefer to disable 'variety'.

## Ricing

I recommend installing the [N-Global-Theme](https://store.kde.org/p/1590092), editing the bottom panel and changing the font settings (I like 'Source Code Pro' at 10pt). The N-Global theme goes nicely with the [Dracula theme](https://draculatheme.com/), which is available for most userland apps.

## Firefox checklist

- Customise the homepage.
- Change wallpaper settings.
- Install the [Dracula Dark](https://addons.mozilla.org/en-GB/firefox/addon/dracula-dark-colorscheme/) firefox theme.
- Install the [uBlock Origin](https://addons.mozilla.org/en-GB/firefox/addon/ublock-origin/) extension.
- Install the [Midnight Lizard](https://addons.mozilla.org/en-GB/firefox/addon/midnight-lizard-quantum/) extension.
- Install the Dracula colour scheme for Midnight Lizard using the 'get more themes' link.

## Configuring wifi on a Thinkpad X220 with a TP-Link USB adaptor

If KDE detects your wifi but prompts you more than once for the password, follow the advice from the top answer on [this stack exchange question](https://unix.stackexchange.com/questions/420497/how-do-i-stop-kwallet-from-asking-my-password-to-let-the-system-connect-to-wifi).

## Package checklist

A few packages that I use all the time are not installed by default. To install them, enter

```
sudo pacman -S transmission-gtk youtube-dl base-devel vim git code kcalc audacity
```
