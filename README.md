# This is XeroLinux's Nord Rice

### Some notes before proceeding :

> Applying this rice will override all your settings. So make sure to create a backup of your system either via Snapper if using it, or TimeShift. Don't worry though, script will attempt to create a backup for you of your ~/.config folder before proceeding. Still better be safe than sorry.

![XeroNord](https://i.imgur.com/VdmaY4M.jpg)

# What you need ...

First off, note that if you want to use on other **Arch**-based distros with **KDE** than **XeroLinux** you will need to add my repo since most of the packages are only available there.

Open the file `/etc/pacman.conf` and add my repo below anywhere :

```
[xerolinux_repo]
SigLevel = Optional TrustAll
Server = https://xerolinux.github.io/$repo/$arch
```
Save the file, and refresh databases via `sudo pacman -Sy` then follow below step...

# Installation

Just clone this repository, run terminal inside directory and run installer via `./install.sh` Script will do the following steps :

- Create a cbackup of your ~/.config folders
- Download and install necessary packages if needed...
- Override your settings and files with this rice's.
- Install and apply my XeroNord Grub theme.
- Reboot system to get everything loaded... 

# F.A.Q

> Q: Will this rice works on other distros ?
> A : If it's not *Vanilla* **Arch-KDE** then no.
>
> Q : I am running *EndeavourOS* **Arch** Distro with *KDE* can I use your rice ?
> A : Short answer, *might*. Long answer, too many variables, I don't guarantee success. Up to you, but not recommended and no support.

# Disclosure

> Use this at your own Risk ! It was requested, so am satisfying this request, but I won't be held liable if you didn't follow above recommendations.... Always Backup.. If you don't and break your system it's on you !!!!
