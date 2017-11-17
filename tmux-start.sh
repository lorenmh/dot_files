tmux new-session -s "$PWD" -d 'vim .'
tmux split-window -h
tmux split-window -v
tmux split-window -v
tmux attach
