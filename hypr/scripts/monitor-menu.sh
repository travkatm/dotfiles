#!/bin/bash

STYLE_PATH="$HOME/.config/wofi/style.css"

# Список мониторов с понятными именами
menu_items="🔄 Сбросить всё в Full HD (1920x1080)\nНастроить: Экран 14 дюймов (eDP-1)\nНастроить: Экран 22 дюймов (DP-1)"

choice=$(echo -e "$menu_items" | wofi --dmenu --style "$STYLE_PATH" --prompt "Управление мониторами")

if [[ "$choice" == "🔄 Сбросить всё в Full HD (1920x1080)" ]]; then
    hyprctl keyword monitor "eDP-1,1920x1080@60,auto,1"
    hyprctl keyword monitor "DP-1,1920x1080@60,auto,1"
elif [[ "$choice" == *"Экран 14 дюймов"* ]]; then
    target_monitor="eDP-1"
elif [[ "$choice" == *"Экран 22 дюймов"* ]]; then
    target_monitor="DP-1"
fi

if [ -n "$target_monitor" ]; then
    # Список разрешений (включая 4:3)
    resolutions="1920x1080\n1680x1050\n1600x900\n1440x1080 (4:3)\n1280x1024\n1280x960 (4:3)\n1280x720\n1024x768 (4:3)\n800x600 (4:3)"
    res_choice=$(echo -e "$resolutions" | wofi --dmenu --style "$STYLE_PATH" --prompt "Разрешение для $target_monitor")
    
    if [ -n "$res_choice" ]; then
        clean_res=$(echo "$res_choice" | awk '{print $1}')
        hyprctl keyword monitor "$target_monitor,$clean_res@60,auto,1"
    fi
fi
