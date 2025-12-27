# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
#if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#  source /usr/share/zsh/manjaro-zsh-prompt
#fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/kamal/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/kamal/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/kamal/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/kamal/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
clear
fastfetch

alias ll="ls -la --color=auto"
alias update="sudo pacman -Syu"
alias search="pacman -Ss"
alias install="sudo pacman -S"
alias remove="sudo pacman -Rns"
alias cls="clear"
alias wp="flatpak run io.github.mimbrero.WhatsAppDesktop"

# <<< conda initialize <<<

alias chrome='google-chrome-stable --enable-features=UseOzonePlatform --ozone-platform=wayland --disable-features=TouchpadOverscrollHistoryNavigation'
alias chrome='google-chrome-stable --enable-features=UseOzonePlatform --ozone-platform=wayland --disable-features=TouchpadOverscrollHistoryNavigation'
eval "$(starship init zsh)"
