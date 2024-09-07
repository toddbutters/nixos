{ config, pkgs, ... }:

let
  unstable = import
    (builtins.fetchTarball https://github.com/nixos/nixpkgs/tarball/nixos-unstable)
    # reuse the current configuration
    { config = config.nixpkgs.config; };
in
{
  environment.systemPackages = with pkgs; [
     unstable.bitwarden
     unstable.bitwarden-cli
     unstable.curl
     unstable.emacs
     unstable.firefox
     unstable.foot
     unstable.fx
     unstable.helix
     unstable.linode-cli
     unstable.obsidian
     unstable.ollama
     unstable.qutebrowser
     unstable.vifm
     unstable.wl-clipboard
  ];

}
