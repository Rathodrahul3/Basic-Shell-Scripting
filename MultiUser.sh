#!/bin/bash

#####################################################
## Purpose: To create multipal user from a file    ##
## Author:  Rahul
## Enviroment : Admin
## Date : 24-March-2024
####################################################

USERF=$1

if [! "$USERF" ]; then
  echo "Mandatary: Please enter user filename to create users.....Thank You !!!!!!!"
  exit
fi

if [! -F "$USERF"]; then
  echo "The $USERF file is not present"
  exit
fi

######### For Loop #################
for U in `cat $USERF`
do 
./Useradd.sh $U

done
