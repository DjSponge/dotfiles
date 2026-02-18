#!/bin/bash

TARGET=$HOME/.config/wallpapers/your-name-wallpaper-1.jpg
URL=https://4kwallpapers.com/images/walls/thumbs_3t/25439.jpg

curl -L -o "$TARGET" "$URL"

if command -v hyprctl &> /dev/null; then
    systemctl --user restart hyprpaper.service
fi
