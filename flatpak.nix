{ config, pkgs, ... }:

{
  # Enable Flatpaks
  services.flatpak.enable = true;
  xdg.portal.enable = true;
}
