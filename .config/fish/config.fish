# Configuration for Fish.

if status is-interactive
    abbr --add --position command s sudo

    abbr --add --position command m man

    abbr --add --position command ff fastfetch

    abbr --add --position anywhere pacman pacman --color=auto
    abbr --add --position anywhere pcm pacman --color=auto
end
