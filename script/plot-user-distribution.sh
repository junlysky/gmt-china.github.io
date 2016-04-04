#!bin/bash
file=user-distribution.ps
title="Global Distribution of Chinese GMT Users"

gmt set MAP_TITLE_OFFSET=8p FONT_TITLE=20p
gmt pscoast -JJ155/27c -R0/360/-62/80 -X1.5c -Y3c -A33000 -Dc -Gskyblue -K -B+t"$title"> $file
gmt psxy -J -R -Sc0.2c -Gorange -W0.1p,black,solid -: -K -O >> $file << EOF
39.9 116.3 北京
31.7 117.2 合肥
30.6 114.3 武汉
25.2 110.2 桂林
EOF
gmt pstext -J -R -O -F+cTR -N -D-0.5c/0.5c >> $file << EOF
Updated at `date +'%m/%d/%Y'`
EOF
gmt psconvert -A -P -TG $file
rm gmt.* $file
