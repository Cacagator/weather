#! /bin/bash

curl "https://www.wunderground.com/history/airport/GNV/2016/09/06/DailyHistory.heml?&format=1" >gnv.txt

maxTem=`cut -f2 -d ',' gnv.txt|sort -n|tail -1`

echo the Max Temp is $maxTem
