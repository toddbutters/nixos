# NixOS repo

My NixOS configuration repo.
I heard about this and that in a podcast.
I am not a software developer nor a system administrator.
I know enough to be dangerous but not enough to be satisfied.
I have used most OS's, lots o' distros, ssh'd to several servers,
but have never seriously invested my time into any tech in particular.

I think this is my chance to change that and maybe even reach inner peace.

## Goals

- Keep it simple and contained
    - No flakes
    - No home manager
    - No dotfiles
- Stick to stable
- Have some fun

## Setup

This might work.

1. Install NixOS
1. Log in and clone `nixos` repo to home or wherever.
1. Copy hardware config if needed. `cp /etc/nixos/hardware-configuration.nix ~/nixos/`
1. Build and switch to new config. `sudo nixos-rebuild switch -I nixos-config="~/nixos/configuration.nix"`

