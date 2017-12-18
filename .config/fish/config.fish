neofetch

export EDITOR='vim'

set fish_greeting
set fish_color_command cb4b16

function fish_prompt
    echo (set_color 403434) '------------------------------------------------------------'
    echo (set_color 087DC0)(pwd|sed "s=$HOME=~=")(set_color 847BE4)' » '(set_color normal)
end

alias ...='cd ../..'
alias update='trizen -Syu --noconfirm; trizen -Rns (sudo pacman -Qttdq) --noconfirm; trizen -Sc --noconfirm'
alias moreupdate='trizen -Syu --noconfirm; trizen -Rns (sudo pacman -Qttdq) --noconfirm; trizen -Scc; rm -rf /home/josh/.cache/*'
alias restart='trizen -Syu --noconfirm; trizen -Rns (sudo pacman -Qttdq) --noconfirm; trizen -Scc; rm -rf /home/josh/.cache/*; sudo reboot now'
alias pacman='sudo pacman'

function configure_pager
	set -gx LESS_TERMCAP_mb \e"[01;31m" 
	set -gx LESS_TERMCAP_md \e"[1;31m" 
	set -gx LESS_TERMCAP_me \e"[0m"
	set -gx LESS_TERMCAP_se \e"[0m" 
	set -gx LESS_TERMCAP_so \e"[1;44;33m"
	set -gx LESS_TERMCAP_ue \e"[0m"
	set -gx LESS_TERMCAP_us \e"[1;32m"
end

configure_pager
