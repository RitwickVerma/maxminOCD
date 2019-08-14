# Maximize, Minimize OCD shortcut script

This tiny script is to change the default behaviour of maximize and minimize shortcuts which don't feel natural to me. 

This script does **NOT** work on **Wayland**

#### Current behaviour
* Meta+PgUp to maximize and then Meta+PgUp again to unmaximize.
* Meta+pgDown to minimize regardless of the current window state.

#### What I want and this script does
* Meta+PgUp to maximize and then Meta+PgDown to unmaximize.
* Meta+PgDown to minimize only if window is unmaximized.
  
## Required
* xdotool
* wmctrl
* xwininfo
* awk
* grep

All of which would probably be installed if you don't use vanilla Arch or other extremely stripped down distro.

## Setup

Download the script and store it in ~/.local/bin which is the default directory for custom scripts. 
~~~
curl -fLo ~/.local/bin/mm.sh --create-dirs \
    https://raw.githubusercontent.com/RitwickVerma/maxminOCD/master/mm.sh
~~~
Now make it executable
~~~
chmod +x mm.sh
~~~

All that's left to do is binding custom shortcuts to the file path. You can use whatever GUI tool included with your DE

Bind your maximize shortcut to run:
~~~
~/.local/bin/mm.sh up
~~~

Bind your minimize shortcut to run:
~~~
~/.local/bin/mm.sh down
~~~
