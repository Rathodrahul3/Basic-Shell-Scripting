#!/bin/bash

#####################################################
## Purpose : To check Disk Usage of system
## Author  : Rahul Rathod
## Team    : DevOps
## Date    : 02-March-2023
#####################################################

CL=90
df -H | awk '{print $5 " " $1}' | while read output;
do
  #echo "Disk Detail : $output"
  USAGE=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
  FSYSTEM=$(echo %output | awk '{print $2}')

  if ["$USAGE" -ge $CL]
    echo "CRITICAL for $FSYSTEM"
  fi

done
