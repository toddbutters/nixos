{ config, pkgs, ... }:

  # Define a user account. Don't forget to set a password with ‘passwd’.
{
  users.users.todd = {
    isNormalUser = true;
    description = "todd";
    extraGroups = [ "networkmanager" "wheel" "video" ];
    packages = with pkgs; [
      bat
      bottom
      curl
      delta
      dig
      direnv
      eza
      firefox
      fish
      fishPlugins.forgit
      foot
      fzf
      git
      gitFull
      helix
      htop
      lazygit
      linode-cli
      nix-direnv
      nnn
      qutebrowser
      thunderbird
      tree
      vifm
      visidata
      wezterm
      wl-clipboard
    ];
  };

  users.users.toad = {
    isNormalUser = true;
    description = "toad";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      bsdgames
      haskellPackages.tetris
      nsnake
      raylib-games
      xtris
      vitetris
    ];
  };
}
