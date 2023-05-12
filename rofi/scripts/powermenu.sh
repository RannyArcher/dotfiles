#!/usr/bin/env bash

uptime=$(uptime -p | sed -e 's/up //g')

rofi_command="rofi -no-config -theme ~/.config/rofi/powermenu.rasi"

# Options
shutdown=""
reboot=""
lock=""
suspend="󰒲"
logout="󰍃"
hibernate=""

# Variable passed to rofi
options="$lock\n$suspend\n$logout\n$reboot\n$shutdown\n$hibernate"

chosen="$(echo -e "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 0)"


case $chosen in
    $shutdown)
			systemctl poweroff
        ;;
    $reboot)
			systemctl reboot
        ;;
    $lock)
			sleep 0.1 ; lockscreen
        ;;
    $suspend)
			mpc -q pause
			amixer set Master mute
			systemctl suspend
        ;;
    $logout)
				bspc quit ; i3-msg exit
        ;;
		$hibernate)
				systemctl hibernate
		;;
esac
