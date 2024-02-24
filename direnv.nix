{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ direnv nix-direnv ];

  programs.bash = {
   interactiveShellInit = ''
     eval "$(direnv hook bash)"
   '';
  };
}
