#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: saptecheddarkfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/saptecheddarkfox/saptecheddarkfox.tmux
set -g mode-style "fg=#1B90FF,bg=#FFFFFF"
set -g message-style "fg=#1B90FF,bg=#FFFFFF"
set -g message-command-style "fg=#1B90FF,bg=#FFFFFF"
set -g pane-border-style "fg=#FFFFFF"
set -g pane-active-border-style "fg=#1b90ff"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#FFFFFF,bg=#1B90FF"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#1B90FF,bg=#1b90ff,bold] #S #[fg=#1b90ff,bg=#1B90FF,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#1B90FF,bg=#1B90FF,nobold,nounderscore,noitalics]#[fg=#1b90ff,bg=#1B90FF] #{prefix_highlight} #[fg=#FFFFFF,bg=#1B90FF,nobold,nounderscore,noitalics]#[fg=#1B90FF,bg=#FFFFFF] %Y-%m-%d  %I:%M %p #[fg=#1b90ff,bg=#FFFFFF,nobold,nounderscore,noitalics]#[fg=#1B90FF,bg=#1b90ff,bold] #h "
setw -g window-status-activity-style "underscore,fg=#FF8AF0,bg=#1B90FF"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#FF8AF0,bg=#1B90FF"
setw -g window-status-format "#[fg=#1B90FF,bg=#1B90FF,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#1B90FF,bg=#1B90FF,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#1B90FF,bg=#FFFFFF,nobold,nounderscore,noitalics]#[fg=#1B90FF,bg=#FFFFFF,bold] #I  #W #F #[fg=#FFFFFF,bg=#1B90FF,nobold,nounderscore,noitalics]"
