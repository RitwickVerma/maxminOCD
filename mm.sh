#!/bin/sh
ACTIVE_WINDOW_ID=$( xdotool getactivewindow )

if [ "$1" == 'up' ]; then
    xwininfo -wm -id $ACTIVE_WINDOW_ID | awk '/Window state:/{getline; print $1}' | grep -q 'Focused' && wmctrl -i -r $ACTIVE_WINDOW_ID -b add,maximized_vert,maximized_horz

    #xwininfo -wm -id $LAST_MINIMIZED_WINDOW_ID | awk '/Window state:/{getline; print $1}' | grep -q 'Hidden' && wmctrl -a $( xdotool getwindowname $LAST_MINIMIZED_WINDOW_ID)
fi

if [ "$1" == 'down' ]; then
    xwininfo -wm -id $ACTIVE_WINDOW_ID | awk '/Window state:/{getline; print $1}' | grep -q 'Focused' && xdotool windowminimize $ACTIVE_WINDOW_ID
    
    xwininfo -wm -id $ACTIVE_WINDOW_ID | awk '/Window state:/{getline; print $1}' | grep -q 'Maximized' &&  wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz
fi
