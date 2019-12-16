#!/bin/bash 

user=$(whoami)

day=$(date)
kernel=$(uname -r)
currentdir=$(pwd)

echo "hello $user today is $day, your kernel version is $kernel and your current dir is $currentdir remeber to update!"


