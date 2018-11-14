# __select_above_pane_or_kill_line.fish
# author: Seong Yong-ju <sei40kr@gmail.com>

function __select_above_pane_or_kill_line
    if [ -n $TMUX -a -z (commandline) ]
        tmux select-pane -U
    else
        commandline -f kill-line
    end
end
