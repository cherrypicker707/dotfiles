#!/usr/bin/bash

# Launching Script for Polybar.

polybar-msg cmd quit
echo "---" | tee -a /tmp/polybar.log
polybar bar 2>&1 | tee -a /tmp/polybar.log & disown
echo "Bars launched..."
