# Configuration for fish

if status is-interactive
    abbr --add --position command s sudo

    abbr --add --position command m man

    abbr --add --position command ff fastfetch

    abbr --add --position anywhere pcm pacman --color=auto
    abbr --add --position anywhere pacman pacman --color=auto

    abbr --add --position command gcl git clone
    abbr --add --position command gin git init
    abbr --add --position command gad git add
    abbr --add --position command gmv git mv
    abbr --add --position command grstr git restore
    abbr --add --position command grm git rm
    abbr --add --position command gbs git bisect
    abbr --add --position command gdf git diff
    abbr --add --position command glg git log
    abbr --add --position command gsh git show
    abbr --add --position command gst git status
    abbr --add --position command gbr git branch
    abbr --add --position command gme git merge
    abbr --add --position command grbs git rebase
    abbr --add --position command grst git reset
    abbr --add --position command gsw git switch
    abbr --add --position command gtg git tag
    abbr --add --position command gft git fetch
    abbr --add --position command gpl git pull
    abbr --add --position command gps git push
end
