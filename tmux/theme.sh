#### Tmux theme configuration

tm_icon="🐧"
tm_color_active=colour51
tm_color_inactive=colour241
tm_color_feature=colour198

tm_session_name="#[fg=$tm_color_feature,bold]$tm_icon #S"
tm_date="#[fg=$tm_color_inactive] %R %d %b"
tm_host="#[fg=$tm_color_feature,bold]#h"

itunes_song="#[fs=$tm_color_feature]#(osascript -l JavaScript ~/.dotfiles/bin/itunes_current_track.js)"

# statusbar settings and colors
set-option -g status-style fg=$tm_color_active
set -g status-left $tm_session_name' '
set -g status-right-length 150
set -g status-right $itunes_song' '$tm_date' '$tm_host

# active window colors
set-window-option -g window-status-current-style fg=$tm_color_active
set-window-option -g window-status-current-format "#[bold]#I #W"

# pane border colors
set-window-option -g pane-border-style fg=$tm_color_inactive
set-window-option -g pane-active-border-style fg=$tm_color_active

# message text colors
set-option -g message-style fg=$tm_color_active

# pane number display colors
set-option -g display-panes-active-colour $tm_color_active
set-option -g display-panes-colour $tm_color_inactive

