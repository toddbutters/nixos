{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    configure = {
      customRC = ''
      set clipboard=unnamedplus
      set number
      set relativenumber
      '';
    };
  };
}
