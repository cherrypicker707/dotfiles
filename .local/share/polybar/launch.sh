#!/bin/zsh

# Script for Launching Polybar

polybar-msg cmd quit
echo "---" | tee -a /tmp/polybar.log
polybar bar 2>&1 | tee -a /tmp/polybar.log & disown
echo "Bar launched..."
