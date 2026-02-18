## Config-edit command, general purpose utility to edit config files. 
ce() {
  if command -v chezmoi &> /dev/null; then
    chezmoi edit --apply "$@"
  else
    ${EDITOR:-nano} "$@"
  fi
}

## Hyprland / Ricing config files
alias ce-hyprland="ce ~/.config/hypr/hyprland.conf"
alias ce-hyprpaper="ce ~/.config/hypr/hyprpaper.conf"

## ZSH config files
alias ref="source ~/.zshrc"

alias ce-zsh="ce ~/.zshrc"
alias ce-aliases="ce ~/.config/zsh/aliases.zsh"
alias ce-functions="ce ~/.config/zsh/functions.zsh"

## Waybar config-files
alias ce-waybar-conf="ce ~/.config/waybar/config.jsonc"
alias ce-waybar-style="ce ~/.config/waybar/style.css"
