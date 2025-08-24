function use_light_theme
{
    patch -Rr - ~/.config/alacritty/alacritty.toml ~/.config/alacritty/theme.patch
    patch -Rr - ~/.config/i3/config ~/.config/i3/theme.patch
    patch -Rr - ~/.config/polybar/config.ini ~/.config/polybar/theme.patch
    patch -Rr - ~/.config/nvim/lua/plugins/catppuccin.lua ~/.config/nvim/theme.patch
    patch -Rr - ~/.config/gtk-3.0/settings.ini ~/.config/gtk-3.0/theme.patch
    patch -Rr - ~/.local/share/rofi/theme.rasi ~/.local/share/rofi/theme.patch
    patch -Rr - ~/.Xresources ~/.theme.patch
    kvantummanager --set catppuccin-latte-lavender
    feh --bg-fill ~/.wallpapers/light_wallpaper.png
    xrdb ~/.Xresources
    i3-msg restart
}

function use_dark_theme
{
    patch -r - ~/.config/alacritty/alacritty.toml ~/.config/alacritty/theme.patch
    patch -r - ~/.config/i3/config ~/.config/i3/theme.patch
    patch -r - ~/.config/polybar/config.ini ~/.config/polybar/theme.patch
    patch -r - ~/.config/nvim/lua/plugins/catppuccin.lua ~/.config/nvim/theme.patch
    patch -r - ~/.config/gtk-3.0/settings.ini ~/.config/gtk-3.0/theme.patch
    patch -r - ~/.local/share/rofi/theme.rasi ~/.local/share/rofi/theme.patch
    patch -r - ~/.Xresources ~/.theme.patch
    kvantummanager --set catppuccin-mocha-lavender
    feh --bg-fill ~/.wallpapers/dark_wallpaper.png
    xrdb ~/.Xresources
    i3-msg restart
}

OPTION=$(printf "use light theme\nuse dark theme\n" | rofi -dmenu -p "»")

case $OPTION in
    "use light theme")
        use_light_theme
        ;;
    "use dark theme")
        use_dark_theme
        ;;
esac
