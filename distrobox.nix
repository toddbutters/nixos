{ config, pkgs, ... }:

#  may need to create container policy first
# ~/.config/containers/policy.json
# { "default": [ { "type": "insecureAcceptAnything" } ] }
{
  # List packages installed in system profile.
  environment.systemPackages = with pkgs; [
    distrobox
    qemu
  ];

  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
  };
}
