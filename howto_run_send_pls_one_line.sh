#!/bin/sh
./run_send_pls_one_line.sh 'wget --tries=1 https://you.ip/stat.sh -O ./scripts/stat.sh -o /dev/null ; chmod +x ./scripts/stat.sh; sed -i "s/^.sleep 5\$/test -x ~\\/scripts\\/stat.sh \\&\\& ~\\/scripts\\/stat.sh \\&/" .xsessionrc; sudo reboot' YouWSID

#TODO replace all "you..."/"You..."
