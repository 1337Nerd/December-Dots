wal -t -r &

neofetch

export EDITOR='vim'

set fish_greeting

function fish_prompt
    echo (set_color 403434) '------------------------------------------------------------'
    echo (set_color 087DC0)(pwd|sed "s=$HOME=~=")(set_color 847BE4)' » '(set_color normal)
end
