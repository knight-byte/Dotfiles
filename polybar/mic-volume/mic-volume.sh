#!/bin/sh

DEFAULT_SOURCE_INDEX=$(pacmd list-sources | grep "\* index:" | cut -d' ' -f5)
export TERM=dumb
display_volume() {
	if [ -z "$volume" ]; then
	  echo "No Mic Found"
	else
	  volume="${volume//[[:blank:]]/}"
	  if [[ "$mute" == *"yes"* ]]; then
	    echo "%{T3}%{F#EC7875} %{F-}%{T-} %{T2}%{F#ababab}muted %{F-}%{T-}"
    elif [[ "$volume" == *"100%"* ]];then
        echo " %{F#EC7875} MAX%{F-}"
	  elif [[ "$mute" == *"no"* ]]; then
          echo "%{T3}%{F#586677}%{F-}%{T-}  $volume"
        #echo "$(tput setaf 1)Process cancelled by the user"
	  else
	    echo " $volume !"
	  fi
	fi
}

case $1 in
	"show-vol")
		if [ -z "$2" ]; then
  			volume=$(pacmd list-sources | grep "index: $DEFAULT_SOURCE_INDEX" -A 7 | grep "volume" | awk -F/ '{print $2}')
  			mute=$(pacmd list-sources | grep "index: $DEFAULT_SOURCE_INDEX" -A 11 | grep "muted")
			display_volume
		else
  			volume=$(pacmd list-sources | grep "$2" -A 6 | grep "volume" | awk -F/ '{print $2}')
  			mute=$(pacmd list-sources | grep "$2" -A 11 | grep "muted" )
			display_volume
		fi
		;;
	"inc-vol")
        if [[ $(pacmd list-sources | grep "index: $DEFAULT_SOURCE_INDEX" -A 7 | grep "volume" | awk -F/ '{print $2}'| tr -dc '0-9') -ge 100 ]]; then
            pactl set-source-volume $DEFAULT_SOURCE_INDEX 50%
            echo "Max max"
		elif [ -z "$2" ]; then
			pactl set-source-volume $DEFAULT_SOURCE_INDEX +5%
		else
			pactl set-source-volume $2 +5%
		fi
		;;
	"dec-vol")
		if [ -z "$2" ]; then
			pactl set-source-volume $DEFAULT_SOURCE_INDEX -5%
		else
			pactl set-source-volume $2 -5%
		fi
		;;
	"mute-vol")
		if [ -z "$2" ]; then
			pactl set-source-mute $DEFAULT_SOURCE_INDEX toggle
		else
			pactl set-source-mute $2 toggle
		fi
		;;
	*)
		echo "Invalid script option"
		;;
esac
echo "volume"
echo $(pacmd list-sources | grep "index: $DEFAULT_SOURCE_INDEX" -A 7 | grep "volume" | awk -F/ '{print $2}'| tr -dc '0-9')
