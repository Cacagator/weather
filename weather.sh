#! /bin/bash

yesterday=`date -d yesterday '+%Y/%m/%d'`

#website="https://www.wunderground.com/history/airport/GNV/2016/09/06/DailyHistory.heml?&format=1"

#echo "https://www.wunderground.com/history/airport/GNV/$yesterday/DailyHistory.heml?&format=1"|curl - >gnv.txt

curl -s `echo "https://www.wunderground.com/history/airport/GNV/$yesterday/DailyHistory.heml?&format=1"` >gnv.txt

maxTem=`cut -f2 -d ',' gnv.txt|sort -n|tail -1`

echo Yesterday is $yesterday, and the Max Temp is $maxTem degrees Fahrenheit!

