# **❄️ apurplefrog's NixOS Configuration ❄️**

![Preview of my configuration](./preview.png)

## Install Guide

To install the system, git is necessary. To install git temporarily, use the command `nix-shell -p git`

Clone the repository in your user directory with `git clone https://github.com/autumn-the-kitty-cat/nix-config`

In the home directory, create a `.config` directory with `mkdir ~/.config`

Copy the entire home-manager configuration to `.config` with the command `cp -r ~/nix-config/home-manager .~/config`

Copy the NixOS configuration with `sudo cp ~/nix-config/nixos/configuration.nix /etc/nixos` 

You can now remove the `nix-config` directory with `rm -rf ~/nix-config`

Since this system is based on NixOS unstable, we must set the channel with `sudo nix-channel --add https://channels.nixos.org/nixos-unstable nixos`

Now, switch the configuration with `sudo nixos-rebuild switch --upgrade`

Now, to configure programs, use `nh home switch ~/.config/home-manager`

Now reboot the system and you should have a fully functioning NixOS configuration!
