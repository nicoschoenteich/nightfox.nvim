# Nightfox Color Palette
# Style: ui5conlightfox
# Upstream: https://github.com/edeneast/nightfox.nvim/raw/main/extra/ui5conlightfox/ui5conlightfox.fish
set -l foreground 000000
set -l selection FFA42C
set -l comment 646363
set -l red ba066c
set -l orange ff5d17
set -l yellow ffa42c
set -l green 30914c
set -l purple 8838ec
set -l cyan 3b4673
set -l pink ba066c

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
