# __select_below_pane_or_execute.fish
# author: Seong Yong-ju <sei40kr@gmail.com>

function __select_below_pane_or_execute
    if [ -n $TMUX -a -z (commandline) ]
        tmux select-pane -D
    else
        commandline -f execute
    end
end
