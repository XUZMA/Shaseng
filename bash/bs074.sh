#!/bin/bash

#    http://bash.cyberciti.biz/guide//dev/null_discards_unwanted_output
#    /dev/null discards unwanted output
#    
#    All data written on a /dev/null or /dev/zero special file is discarded by the system. 
#    Use /dev/null to send any unwanted output from program/command and syntax is:
#    
#    command >/dev/null
#    This syntax redirects the command standard output messages to /dev/null where it is ignored by the shell.
#    
#    OR
#    command 2>/dev/null
#    This syntax redirects the command error output messages to /dev/null where it is ignored by the shell.
#    
#    OR
#    command &>/dev/null
#    This syntax redirects both standard output and error output messages to /dev/null where it is ignored by the shell.

# set var 
PASSWD_FILE=/etc/passwd
 
# get user name
read -p "Enter a user name : " username
 
# try to locate username in in /etc/passwd 
# 
grep "^$username" $PASSWD_FILE > /dev/null
 
# store exit status of grep
# if found grep will return 0 exit stauts
# if not found, grep will return a nonzero exit stauts
status=$?
 
if test $status -eq 0
then
	echo "User '$username' found in $PASSWD_FILE file."
else
	echo "User '$username' not found in $PASSWD_FILE file."
fi