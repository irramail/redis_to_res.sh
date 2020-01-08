#!/bin/sh
o=""; while :; do id=`cat id.txt`; v=`redis-cli get "$id" | sed "s/ENTER/\n/g" | base64 --decode`; test "$v" != "$o" && echo -e "$v" >> ~/res.txt; o=$v ; sleep 1; done
