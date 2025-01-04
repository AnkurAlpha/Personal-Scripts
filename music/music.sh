#!/bin/bash

## My study music script, which I often use while studying

directory="/home/ankur/study_music/" # The directory path
read -rp "Enter volume level : " vol
# Check if the directory exists
while true
do
    if [[ -d "$directory" ]]; then
        # Get a list of files in the directory
        files=("$directory"/*)

  # Get the number of files
  num_files=${#files[@]}

  # If there are files in the directory, pick a random one
  if [[ $num_files -gt 0 ]]; then
      random_index=$(shuf -i 0-$((num_files - 1)) -n 1)
      random_file=${files[$random_index]}
      mpv --volume="$vol" --no-video "$random_file"
  fi
    fi
    sleep 1
done
