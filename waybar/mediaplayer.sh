#!/bin/sh

player_status=$(playerctl -p spotify status 2> /dev/null)

title=$(playerctl -p spotify metadata title)
if artist=$(playerctl -p spotify metadata artist); then
    song_info="${title} - ${artist}"
else
    song_info="${title}"
fi


if [ "$player_status" = "Playing" ]; then
    output="${song_info}"
elif [ "$player_status" = "Paused" ] ; then
    output="✨ ${song_info}"
fi

echo "$output"
