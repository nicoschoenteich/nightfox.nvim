# Nightfox Color Palette
# Style: saptecheddarkfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/saptecheddarkfox/saptecheddarkfox.fish
set -l foreground FFFFFF
set -l selection FF8AF0
set -l comment 002A86
set -l red cc00dc
set -l orange cc00dc
set -l yellow 89d1ff
set -l green 049f9a
set -l purple 1b90ff
set -l cyan 049f9a
set -l pink cc00dc

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
