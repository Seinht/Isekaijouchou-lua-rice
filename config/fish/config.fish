source /usr/share/cachyos-fish-config/cachyos-config.fish

# Set pywal16
source ~/.config/wal/templates/colors.fish
cat ~/.cache/wal/sequences &

# Set sudoedit for nvim
set -gx SUDO_EDITOR nvim

# Config Folders & Files
alias cfish="cd ~/.config/fish/ && nvim"
alias cfisch="cd ~/.config/fish/ && nvim config.fish"
alias cland="cd ~/.config/hypr/ && nvim"
alias cw="cd ~/.config/waybar/ && nvim"
alias conf="cd ~/.config/ && nvim"

# Git, Projects, Study Resources cd Shortcuts
alias sc="cd ~/Compsci/ && nvim"
alias scc="cd ~/Compsci/Cyber\ Security/ && nvim"
alias scs="cd ~/Compsci/Software\ Development/ && nvim"
alias scw="cd ~/Compsci/WebDev/ && nvim"
alias scj="cd ~/Compsci/JavaScript/ && nvim"
alias gpro="cd ~/Projects/ && nvim"
alias gllh="cd ~/Projects/lelouch-lua-hyprland/ && nvim"
alias gilh="cd ~/Projects/Isekaijouchou-lua-hyprland/ && nvim"
alias app="cd ~/Software/ && nvim"

#Alias
alias hyprbar='waybar | killall waybar && nohup waybar &'
alias resnet='sudo systemctl restart NetworkManager'
alias respip='systemctl --user restart pipewire pipewire-pulse'

# Dim
alias dim='nohup hyprsunset -g 35 &'
alias ddim='nohup hyprsunset -g 20 &'
alias dddim='nohup hyprsunset -g 15 &'
alias undim='killall hyprsunset'

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
