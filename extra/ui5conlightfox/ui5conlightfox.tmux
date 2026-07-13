#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: ui5conlightfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/ui5conlightfox/ui5conlightfox.tmux
set -g mode-style "fg=#F5F5F5,bg=#000000"
set -g message-style "fg=#F5F5F5,bg=#000000"
set -g message-command-style "fg=#F5F5F5,bg=#000000"
set -g pane-border-style "fg=#000000"
set -g pane-active-border-style "fg=#0090da"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#000000,bg=#F5F5F5"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#F5F5F5,bg=#0090da,bold] #S #[fg=#0090da,bg=#F5F5F5,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#F5F5F5,bg=#F5F5F5,nobold,nounderscore,noitalics]#[fg=#0090da,bg=#F5F5F5] #{prefix_highlight} #[fg=#000000,bg=#F5F5F5,nobold,nounderscore,noitalics]#[fg=#F5F5F5,bg=#000000] %Y-%m-%d  %I:%M %p #[fg=#0090da,bg=#000000,nobold,nounderscore,noitalics]#[fg=#F5F5F5,bg=#0090da,bold] #h "
setw -g window-status-activity-style "underscore,fg=#646363,bg=#F5F5F5"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#646363,bg=#F5F5F5"
setw -g window-status-format "#[fg=#F5F5F5,bg=#F5F5F5,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#F5F5F5,bg=#F5F5F5,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#F5F5F5,bg=#000000,nobold,nounderscore,noitalics]#[fg=#F5F5F5,bg=#000000,bold] #I  #W #F #[fg=#000000,bg=#F5F5F5,nobold,nounderscore,noitalics]"
