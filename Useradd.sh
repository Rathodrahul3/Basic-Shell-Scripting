#!/bin/bash

#########################################
######	Purpose:	To create a new user ##
###### 	Author: 	Rahul		          #####
######	Date: 	24-02-2024	         ####
######	Team: 	Admin	               ####
#########################################

NUSER=$1

if [! "$NUSER"]; then
  echo "Please provide username it is mandotory:"
  exit
fi

RUSER=`/usr/bin/whoami`

if ["RUSER" != "root"]; then
  echo "You need to be root user to perform this action...!!!"
  exit
fi

/usr/bin/id $NUSER

if [$? -eq 0]; then
  echo "This User $NUSER alredy exiting please provide different username"
  exit
fi

/sbin/adduser $NUSER
echo "The User $NUSER is successfully created !!!!!"
