#!/bin/bash

# read words from the file
WORDS=($(cat list.txt))

# set the range of words to search based on the current day
DAY=$(date +%d)
START=$(( (DAY - 1) * 10 ))
END=$(( DAY * 10 ))

for (( i=$START; i<$END; i++ ))
do 
    WORD=${WORDS[$i]}
    microsoft-edge https://www.bing.com/search?q=$WORD
done
