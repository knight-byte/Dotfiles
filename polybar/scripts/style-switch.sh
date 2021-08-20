#!/usr/bin/sh

SDIR="$HOME/.config/polybar/scripts"

# Launch Rofi
MENU="$(rofi -no-config -no-lazy-grab -sep "|" -dmenu -i -p '' \
-theme $SDIR/rofi/styles.rasi \
<<< " Nord| Gruvbox| Dark| Grey| Kylu| Cherry")"
            case "$MENU" in
				*Nord) "$SDIR"/styles.sh --nord ;;
				*Gruvbox) "$SDIR"/styles.sh --gruvbox ;;
				*Dark) "$SDIR"/styles.sh --dark ;;
				*Grey) "$SDIR"/styles.sh --grey ;;
				*Kylu) "$SDIR"/styles.sh --kylu ;;
				*Cherry) "$SDIR"/styles.sh --cherry ;;
            esac
