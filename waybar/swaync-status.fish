#!/usr/bin/env fish

set nc (swaync-client -c)

if test (swaync-client -D) = true
    echo '💤'
else if test $nc = 0
    echo ''
else if test $nc = 1
    echo '🔥'
else
    echo "<b>$nc</b> 🔥"
end

return 0
