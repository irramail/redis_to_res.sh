#!/bin/sh
$(DISPLAY=:0.0 x-www-browser 'https://www.youtube.com/watch?v=YouTubeIDVideo?autoplay=1') >/dev/null 2>&1)& sleep 45; killall -q `readlink /etc/alternatives/x-www-browser | sed 's|^.*/||' `

#TODO replace YouTubeIDVideo
