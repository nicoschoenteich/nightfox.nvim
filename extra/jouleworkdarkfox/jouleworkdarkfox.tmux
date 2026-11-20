#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: jouleworkdarkfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/jouleworkdarkfox/jouleworkdarkfox.tmux
set -g mode-style "fg=#0B0C0E,bg=#F1F2F4"
set -g message-style "fg=#0B0C0E,bg=#F1F2F4"
set -g message-command-style "fg=#0B0C0E,bg=#F1F2F4"
set -g pane-border-style "fg=#F1F2F4"
set -g pane-active-border-style "fg=#8080f7"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#F1F2F4,bg=#0B0C0E"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#0B0C0E,bg=#8080f7,bold] #S #[fg=#8080f7,bg=#0B0C0E,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#0B0C0E,bg=#0B0C0E,nobold,nounderscore,noitalics]#[fg=#8080f7,bg=#0B0C0E] #{prefix_highlight} #[fg=#F1F2F4,bg=#0B0C0E,nobold,nounderscore,noitalics]#[fg=#0B0C0E,bg=#F1F2F4] %Y-%m-%d  %I:%M %p #[fg=#8080f7,bg=#F1F2F4,nobold,nounderscore,noitalics]#[fg=#0B0C0E,bg=#8080f7,bold] #h "
setw -g window-status-activity-style "underscore,fg=#7E879A,bg=#0B0C0E"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#7E879A,bg=#0B0C0E"
setw -g window-status-format "#[fg=#0B0C0E,bg=#0B0C0E,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#0B0C0E,bg=#0B0C0E,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#0B0C0E,bg=#F1F2F4,nobold,nounderscore,noitalics]#[fg=#0B0C0E,bg=#F1F2F4,bold] #I  #W #F #[fg=#F1F2F4,bg=#0B0C0E,nobold,nounderscore,noitalics]"
