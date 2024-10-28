# sample config .tmux.conf
```
### change control key
unbind C-b
set -g prefix C-a

### allow mouse + shift
set -g mouse on
bind -n S-Left previous-window
bind -n S-Right next-window

### limit history
set -g history-limit 20000
setw -g alternate-screen on
set -s escape-time 0
set-option -g allow-rename off
set -g base-index 1

### status bar background color
set -g status-fg white
set -g status-bg black

### status bar text color
set -g status-left '#[fg=green][#[fg=red]#S#[fg=green]]#[default]'
set -g status-right '#[fg=green][ %m/%d %H:%M:%S ]#[default]'

### the border-name of current window
setw -g window-status-current-format '#[fg=red](#I.#P#F#W)#[default]'
setw -g window-status-format '#I#F#W'

### screen for non-root user
set -g default-terminal "screen-256color"
```

# apply config 
tmux source .tmux.conf 


# create new session
tmux new -s <my_session>

# list session
tmux ls 

# enter (attach) session
tmux a -t <my_session>

# new window
ctrl+a  c 

# move to next window
shift + left/right arrow 

# split horizon 
ctrl+a % 

# split vertical
ctrl+a " 

# list session
ctrl+a s 

# delete window
ctrl+a x

# exit (detach) session
ctrl+a d
