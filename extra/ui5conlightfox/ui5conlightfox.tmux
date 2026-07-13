#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: ui5conlightfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/ui5conlightfox/ui5conlightfox.tmux
set -g mode-style "fg=#ffffff,bg=#000000"
set -g message-style "fg=#ffffff,bg=#000000"
set -g message-command-style "fg=#ffffff,bg=#000000"
set -g pane-border-style "fg=#000000"
set -g pane-active-border-style "fg=#e45314"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#000000,bg=#ffffff"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#ffffff,bg=#e45314,bold] #S #[fg=#e45314,bg=#ffffff,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#ffffff,bg=#ffffff,nobold,nounderscore,noitalics]#[fg=#e45314,bg=#ffffff] #{prefix_highlight} #[fg=#000000,bg=#ffffff,nobold,nounderscore,noitalics]#[fg=#ffffff,bg=#000000] %Y-%m-%d  %I:%M %p #[fg=#e45314,bg=#000000,nobold,nounderscore,noitalics]#[fg=#ffffff,bg=#e45314,bold] #h "
setw -g window-status-activity-style "underscore,fg=#646363,bg=#ffffff"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#646363,bg=#ffffff"
setw -g window-status-format "#[fg=#ffffff,bg=#ffffff,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#ffffff,bg=#ffffff,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#ffffff,bg=#000000,nobold,nounderscore,noitalics]#[fg=#ffffff,bg=#000000,bold] #I  #W #F #[fg=#000000,bg=#ffffff,nobold,nounderscore,noitalics]"
