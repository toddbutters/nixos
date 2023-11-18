{ config, pkgs, ... }:

{
  services.keyd.enable = true;
  services.keyd.settings = 
  {
	main = {
	  capslock = "overload(control, esc)";
	  rightalt = "layer(rightalt)";
	};
	rightalt = {
	  h = "left";
	  j = "down";
	  k = "up";
	  l = "right";
	};
  };
}
