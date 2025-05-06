# Configuration for Zsh

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit

alias ff=fastfetch
alias cl=clear
alias ls="ls --color=auto"
alias tree="tree --color=auto"
alias pacman="pacman --color=auto"
alias sudo="sudo "
