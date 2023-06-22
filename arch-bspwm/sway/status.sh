#!/bin/bash

# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

# Produces "21 days", for example
uptime_formatted=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
date_formatted=$(date "+%a %I:%M %P")

volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | cut -d '%' -f1)
brightness=$(cat /sys/class/backlight/radeon_bl0/brightness)

# Emojis and characters for the status bar
echo 󰃠 $brightness "|" 󰕾 $volume "|" 󰥔 $date_formatted
