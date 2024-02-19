#!/bin/bash

# Get the currently focused window's class name (adjust the command if necessary)
FOCUSED_WINDOW_CLASS=$(hyprctl activewindow | grep "class:" | cut -d ' ' -f2)

# Check if the focused window is Brave Browser
if [[ "$FOCUSED_WINDOW_CLASS" == "brave-browser" ]]; then
	hyprctl dispatch fullscreen 1
else
	hyprctl dispatch fullscreen 0
fi
