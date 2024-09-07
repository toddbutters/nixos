{ config, pkgs, ... }:

let
  unstable = import
    (builtins.fetchTarball https://github.com/nixos/nixpkgs/tarball/nixos-unstable)
    # reuse the current configuration
    { config = config.nixpkgs.config; };
in

{
  # Install atuin package to system and add to path.
  environment.systemPackages = with pkgs; [ unstable.atuin ];

  services.atuin = {
    enable = true;
  };

  programs.bash = {
    interactiveShellInit = ''
      shopt -s histappend
      eval "$(atuin init bash)"
    '';
  };
}
