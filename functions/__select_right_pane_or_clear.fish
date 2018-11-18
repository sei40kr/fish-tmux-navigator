# __select_right_pane_clear.fish
# author: Seong Yong-ju <sei40kr@gmail.com>

function __select_right_pane_or_clear
    if [ -n "$TMUX" ]
        tmux select-pane -R
    else
        clear
    end
end
