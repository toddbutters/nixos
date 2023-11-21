{ config, pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    aggressiveResize = true;
    baseIndex = 1;
    historyLimit = 9000;
    keyMode = "vi";
    terminal = "screen-256color";
    shortcut = "space";
    clock24 = true;
    escapeTime = 0;
    plugins = with pkgs; [
      tmuxPlugins.catppuccin
      tmuxPlugins.tilish
    ];
    extraConfig = ''
      set -g display-time 4000
      set -g focus-events on
      set -g status-interval 5
      set -g status-position top
      set -g status-keys emacs

      unbind -T copy-mode-vi Space; #Default for begin-selection
      unbind -T copy-mode-vi Enter; #Default for copy-selection
      bind -T copy-mode-vi v send-keys -X begin-selection
      bind -T copy-mode-vi y send-keys -X copy-selection
    '';
  };
}
