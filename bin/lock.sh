#!/usr/bin/env zsh
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
#      _    _                            _                   |
#     / \  | |__  _   _ _ __   __ _  ___| |__   __ _ _ __    |
#    / _ \ | '_ \| | | | '_ \ / _` |/ __| '_ \ / _` | '__|   |
#   / ___ \| |_) | |_| | | | | (_| | (__| | | | (_| | |      |
#  /_/   \_\_.__/ \__,_|_| |_|\__,_|\___|_| |_|\__,_|_|      |
#                                                            |
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+~~~~~~+
#                                                     |
#   FILENAME : lock.sh                                |
#   AUTHOR   : Abunachar ( Knight-Byte )              |
#   GITHUB   : https://www.github.com/knight-byte     |
#                                                     |
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+

xset s 500 &
xautolock -time 5 -locker "betterlockscreen -l" -notify 30 -nodtifier "notify-send 'Locker' 'Locking screen in 30 seconds'" -killtime 5 -killer "systemctl suspend"
#xautolock -time 2 -locker "systemctl suspend"
