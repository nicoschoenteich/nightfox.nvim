# Nightfox Color Palette
# Style: jouleworkdarkfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/jouleworkdarkfox/jouleworkdarkfox.fish
set -l foreground F1F2F4
set -l selection 2914A6
set -l comment 7E879A
set -l red cc44dd
set -l orange b396f8
set -l yellow 8080f7
set -l green f1f2f4
set -l purple 68aff9
set -l cyan 8080f7
set -l pink cc44dd

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
