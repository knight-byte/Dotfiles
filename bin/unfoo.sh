#!/usr/bin/env bash

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
#      _    _                            _                   |
#     / \  | |__  _   _ _ __   __ _  ___| |__   __ _ _ __    |
#    / _ \ | '_ \| | | | '_ \ / _` |/ __| '_ \ / _` | '__|   |
#   / ___ \| |_) | |_| | | | | (_| | (__| | | | (_| | |      |
#  /_/   \_\_.__/ \__,_|_| |_|\__,_|\___|_| |_|\__,_|_|      |
#                                                            |
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+~~~~~~+
#                                                     |
#   FILENAME : unfoo.sh                               |
#   AUTHOR   : Abunachar ( Knight-Byte )              |
#   GITHUB   : https://www.github.com/knight-byte     |
#                                                     |
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+


if [ -z "$(pgrep foo.sh)" ]
then
	notify-send "Inhibitor Was Not Active."
else
	kill -15 $(pgrep foo.sh) && notify-send "Inhibitor" "Deactivated"
fi


