# Script for Copying Files into This Repo

# i3
rsync -r ~/.config/i3/ .config/i3/

# Alacritty
rsync -r ~/.config/alacritty/ .config/alacritty/

# fish
rsync  -r ~/.config/fish/ .config/fish/

# picom
rsync -r ~/.config/picom/ .config/picom/

# Polybar
rsync -r ~/.config/polybar/ .config/polybar/
rsync -r ~/.local/share/polybar/ .local/share/polybar/

# Rofi
rsync -r ~/.config/rofi/ .config/rofi/
rsync -r ~/.local/share/rofi/ .local/share/rofi/

# Neovim
rsync -r ~/.config/nvim/ .config/nvim/
