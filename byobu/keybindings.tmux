# move x clipboard into tmux paste buffer
#bind C-p run "tmux set-buffer \"$(xclip -o)\"; tmux paste-buffer"
bind C-p run "tmux set-buffer \"$(xsel -ob)\"; tmux paste-buffer"

# move tmux copy buffer into x clipboard
#bind C-y run "tmux save-buffer - | xclip"
bind C-y run "tmux save-buffer - | xsel -ib"
set -g prefix F12
unbind-key -n C-a
