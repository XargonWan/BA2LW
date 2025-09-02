#!/bin/bash

# Script to launch BA2LW as a live wallpaper on Linux Wayland

# Project directory
PROJECT_DIR="$(dirname "$0")"

# Executable path
EXECUTABLE="$PROJECT_DIR/Builds/Linux/BA2LW.x86_64"

# Options for borderless window and fullscreen
OPTIONS="-popupwindow -screen-fullscreen"

# Launch the app
if [ -f "$EXECUTABLE" ]; then
    echo "Launching BA2LW as wallpaper..."
    "$EXECUTABLE" $OPTIONS &
else
    echo "Executable not found. Make sure you have built the project for Linux."
fi
