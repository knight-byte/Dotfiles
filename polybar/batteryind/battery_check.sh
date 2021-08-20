#! /usr/bin/bash
x=$(acpi -b | grep -Eo "[0-9]+%" | grep -Eo "[0-9]+")
if [[ x -le 30 ]];then
     notify-send -u critical "$(acpi -b) $x"
     #echo $x
fi
