#!/bin/bash
# this is just a timer script that I run while doing any code problem
if [[ $1 ]]
then
    for (( i=0 ; i<$1 ; i++ ))
    do
        echo "time $((i+1))/$1"
        sleep 1
    done
else
    echo "please enter a number"
    exit
fi
var=0
while true
do
    (( var+=1 ))
    notify-send "time up !!" "reminder no. $var"
    if [[ $2 ]]
    then
        mpv "./sound.mp3" &> /dev/null
    fi
    sleep 15
done
