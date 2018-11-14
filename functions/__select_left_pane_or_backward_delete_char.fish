# __select_left_pane_or_backward_delete_char.fish
# author: Seong Yong-ju <sei40kr@gmail.com>

function __select_left_pane_or_backward_delete_char
    if [ -n $TMUX -a -z (commandline) ]
        tmux select-pane -L
    else
        commandline -f backward-delete-char
    end
end
