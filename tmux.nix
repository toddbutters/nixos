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
      tmuxPlugins.extrakto
    ];
    extraConfig = ''
      set -g display-time 4000
      set -g focus-events on
      set -g mouse on

      set -g status-interval 5
      set -g status-justify centre
      set -g status-position top
      set -g status-keys emacs

      setw -g window-status-style dim
      setw -g monitor-activity on
      set -g visual-activity on

      bind | split-window -h
      bind - split-window -v

      unbind -T copy-mode-vi Space; #Default for begin-selection
      unbind -T copy-mode-vi Enter; #Default for copy-selection
      bind -T copy-mode-vi v send-keys -X begin-selection
      bind -T copy-mode-vi y send-keys -X copy-selection

      set -g @extrakto_clip_tool wl-copy
    '';
  };
}
