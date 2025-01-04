#!/bin/bash
# this is just a timer script that I run while doing any code problem
if [[ $1 ]]
then
    sleep "$1"
else
    echo "please enter a number"
    exit
fi
var=0
while true
do
    (( var+=1 ))
    notify-send "time up !!" "reminder no. $var"
    mpv "./sound.mp3" &> /dev/null
    sleep 15
done
