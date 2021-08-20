#!/bin/bash

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
#      _    _                            _                   |
#     / \  | |__  _   _ _ __   __ _  ___| |__   __ _ _ __    |
#    / _ \ | '_ \| | | | '_ \ / _` |/ __| '_ \ / _` | '__|   |
#   / ___ \| |_) | |_| | | | | (_| | (__| | | | (_| | |      |
#  /_/   \_\_.__/ \__,_|_| |_|\__,_|\___|_| |_|\__,_|_|      |
#                                                            |
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+~~~~~~+
#                                                     |
#   FILENAME : foo.sh                                 |
#   AUTHOR   : Abunachar ( Knight-Byte )              |
#   GITHUB   : https://www.github.com/knight-byte     |
#                                                     |
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+


me="$(basename "$0")";
running=$(ps h -C "$me" | grep -wv $$ | wc -l);
[[ $running > 1 ]] && notify-send "Inhibitor Already Active"&& exit;

notify-send "Inhibitor" "Activated"
while sleep 30;  do xdotool keydown Shift_L keyup Shift_L; done

