#! /bin/bash

echo "Which airport do you want to check?"

read code

#yesterday=`date -d yesterday '+%Y/%m/%d'`

Year=`date '+%Y/%m/%d'|cut -f1 -d '/'`

Month=`date '+%Y/%m/%d'|cut -f2 -d '/'`

Day=`date '+%Y/%m/%d'|cut -f3 -d '/'`

#yesterday=$Day - 1

#echo "https://www.wunderground.com/history/airport/GNV/$yesterday/DailyHistory.heml?&format=1"|curl - >gnv.txt

curl -s `echo "https://www.wunderground.com/history/airport/$code/$Year/$Month/$Day/DailyHistory.heml?&format=1"` >gnv.txt

maxTem=`cut -f2 -d ',' gnv.txt|sort -n|tail -1`

echo Yesterday is $Day-$Month-$Year, and the Max Temp at $code is $maxTem degrees Fahrenheit!


