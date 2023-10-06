#!/usr/bin/env fish
#hyprctl devices | grep keymap -m 1 | grep --only-matching 'keymap: [ a-zA-Z\(\)]*'
hyprctl devices | grep keymap -m 1 | grep --only-matching '[a-zA-Z\(\)]*$' | while read it
    echo "<small>$it</small> <b></b>"
end
