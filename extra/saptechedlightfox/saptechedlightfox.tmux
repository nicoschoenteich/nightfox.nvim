#!/usr/bin/env bash
# Nightfox colors for Tmux
# Style: saptechedlightfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/saptechedlightfox/saptechedlightfox.tmux
set -g mode-style "fg=#89D1FF,bg=#002A86"
set -g message-style "fg=#89D1FF,bg=#002A86"
set -g message-command-style "fg=#89D1FF,bg=#002A86"
set -g pane-border-style "fg=#002A86"
set -g pane-active-border-style "fg=#002a86"
set -g status "on"
set -g status-justify "left"
set -g status-style "fg=#002A86,bg=#89D1FF"
set -g status-left-length "100"
set -g status-right-length "100"
set -g status-left-style NONE
set -g status-right-style NONE
set -g status-left "#[fg=#89D1FF,bg=#002a86,bold] #S #[fg=#002a86,bg=#89D1FF,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#89D1FF,bg=#89D1FF,nobold,nounderscore,noitalics]#[fg=#002a86,bg=#89D1FF] #{prefix_highlight} #[fg=#002A86,bg=#89D1FF,nobold,nounderscore,noitalics]#[fg=#89D1FF,bg=#002A86] %Y-%m-%d  %I:%M %p #[fg=#002a86,bg=#002A86,nobold,nounderscore,noitalics]#[fg=#89D1FF,bg=#002a86,bold] #h "
setw -g window-status-activity-style "underscore,fg=#FF8AF0,bg=#89D1FF"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#FF8AF0,bg=#89D1FF"
setw -g window-status-format "#[fg=#89D1FF,bg=#89D1FF,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#89D1FF,bg=#89D1FF,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#89D1FF,bg=#002A86,nobold,nounderscore,noitalics]#[fg=#89D1FF,bg=#002A86,bold] #I  #W #F #[fg=#002A86,bg=#89D1FF,nobold,nounderscore,noitalics]"
