{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    withRuby = true;
    configure = {
	customRC = ''
	  set number
	  set relativenumber
	  set cc=80
	  set list
	  set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»
	  autocmd TermOpen * setlocal nonumber norelativenumber
	  if &diff
	    colorscheme blue
	  endif
        '';
      packages.myVimPackage = with pkgs.vimPlugins; {
	start = [ ctrlp fugitive vim-nix ];
      };
    };
  };
}
