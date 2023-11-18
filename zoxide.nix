{ config, pkgs, ... }:

{
  # Install zoxide package to system
  environment.systemPackages = with pkgs; [ zoxide ];

  # Setup bash shell to use zoxide
  programs.bash = {
   interactiveShellInit = ''
     eval "$(zoxide init bash)"
   '';
  };
}
