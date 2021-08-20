#!/usr/bin/sh
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
#      _    _                            _                   |
#     / \  | |__  _   _ _ __   __ _  ___| |__   __ _ _ __    |
#    / _ \ | '_ \| | | | '_ \ / _` |/ __| '_ \ / _` | '__|   |
#   / ___ \| |_) | |_| | | | | (_| | (__| | | | (_| | |      |
#  /_/   \_\_.__/ \__,_|_| |_|\__,_|\___|_| |_|\__,_|_|      |
#                                                            |
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+~~~~~~+
#                                                     |
#   FILENAME : launcher.sh ( rofi launcher )          |
#   AUTHOR   : Abunachar ( Knight-Byte )              |
#   GITHUB   : https://www.github.com/knight-byte     |
#                                                     |
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+


FILE="$HOME/.config/polybar/scripts/rofi/colors.rasi"
rofi -no-config -no-lazy-grab -show drun -modi drun -theme ~/.config/polybar/scripts/rofi/launcher.rasi
