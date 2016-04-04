#!bin/bash
file=user-distribution.ps
title=GMT中文用户分布

gmt pscoast -JJ155/27c -R0/360/-60/80 -X1.5c -Y3c -A33000 -Dc -Gskyblue -K > $file
gmt psxy -J -R -Sc0.2c -Gorange -W0.1p,black,solid -: -O >> $file << EOF
39.9 116.3 北京
31.7 117.2 合肥
30.6 114.3 武汉
25.2 110.2 桂林
EOF
sed -i 's/^%%Title:.*/%%Title: '"$title/" $file
rm gmt.*
