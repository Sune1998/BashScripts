#!/bin/bash

echo "starting upgrade"

#Creates a errorlog file

makefile=$(touch errorlog.log /home/sune/Desktop/errorlog)

#output=/home/sune/Desktop/errorlog.log
echo "created error log file" 
update=$(sudo apt update && sudo apt upgrade -y)

#sends stdout to error.log

$update > /home/sune/Desktop/errorlog.log


	

	


