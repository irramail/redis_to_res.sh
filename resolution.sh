#!/bin/sh

X=$1
Y=$2

if [ -z "$X" ]; then
        X="1348"
fi
if [ -z "$Y" ]; then
        Y="800"
fi

out=$3
if [ -z "$out" ]; then
	out="VGA1"
else
	second="--right-of VGA1"
fi

# Modeline "600x700_60.00"  33.76  600 624 688 776  700 701 704 725  -HSync +Vsync
#           "1000x600_60.00" 48.07 1000 1040 1144 1288 600 601 604 622 -HSync +Vsync
gtfres=`gtf "$X" "$Y" 60 | tail -n 2 | head -n 1 | awk '{print $2" "$3" "$4" "$5" "$6" "$7" "$8" "$9" "$10" "$11" "$12" "$13}'`
res=`echo "$gtfres" | sed "s/ .*//"`

DISPLAY=:0.0 xrandr --newmode $gtfres
DISPLAY=:0.0 xrandr --addmode "$out" "$res"
DISPLAY=:0.0 xrandr --output "$out" --mode "$res" $second
