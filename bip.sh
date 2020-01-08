#!/bin/sh
watch "sudo netstat -nap | grep LISTEN | grep 45 | grep 127.0.0.1"

#Some gues named this bip
