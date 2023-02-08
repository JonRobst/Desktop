#!/bin/bash

if [[ "$1" == "--help" ]]; then
  echo "Used to pull hardware activity to try to find the source of an intermittent problem I was having"
  exit 0
fi

date
printf "\n"

printf "RAM \n"
printf "##### \n"
free -h

printf "\nCPU \n"
printf "#####"
iostat -c | grep -v Linux

printf "disk activity \n"
printf "#####"
iostat -dh | grep -v Linux

printf "disk use \n"
printf "#####\n"
df -h

printf "\ntemp \n"
printf "#####\n"
sensors

printf "Battery\n"
printf "#####\n"
acpi -bai

printf "\n####################\n"
printf "####################\n"

#TODO: Decide if I want to fix this up or delete it
