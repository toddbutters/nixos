{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    configure = {
	customRC = ''
	  set number
	  set relativenumber
	  set cc=80
	  set list
	  set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»
	  if &diff
	    colorscheme blue
	  endif
        '';
      packages.myVimPackage = with pkgs.vimPlugins; {
	start = [ ctrlp ];
      };
    };
  };
}
