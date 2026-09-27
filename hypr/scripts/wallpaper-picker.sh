#!/bin/bash

WALL_DIR="$HOME/Pictures/Wallpapers"

# Запускаем awww-daemon вместо swww-daemon
pgrep -x awww-daemon > /dev/null || awww-daemon &

# Выбираем картинку через Wofi
SELECTION=$(ls "$WALL_DIR" | grep -E '\.(jpg|jpeg|png|webp)' | wofi --dmenu --prompt "Обои 🖼️" --style ~/.config/wofi/style.css)

# Применяем обои через awww img
if [ -n "$SELECTION" ]; then
    awww img "$WALL_DIR/$SELECTION" \
        --transition-type outer \
        --transition-pos top-right \
        --transition-step 90 \
        --transition-fps 60
fi
