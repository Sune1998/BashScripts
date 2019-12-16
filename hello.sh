#!/bin/bash

echo "starting backup"

user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

function total_files {
	find $1 -type f | wc -l
}

function total_dirs {
	find $1 -type d | wc -l
}                     

tar -czf $output $input 2> /dev/null


echo -n "file"
total_files $input
echo -n "dirs to include"
total_dirs $input

echo "Backup of $input complete"

echo "details about the output files"
ls -l $output

