#!/bin/bash
# Using this script to track the number of files and their size as I clean about 2TB on an external harddrive

if [[ "$1" == "--help" ]]; then
  echo -e "Outputs the number and disk usage of a list of directories"
  exit 0
fi


directories=

for x in ${directories[*]}; do
  printf "\n$x \n"
  find ./$x -type f | wc -l
  du ./$x -hs
done

#TODO: Want to make it so the directories can be given as an argument
