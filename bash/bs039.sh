#!/bin/bash

#    http://bash.cyberciti.biz/guide/The_exit_status_of_a_command
#    
#    The exit status of a command
#    
#    Each Linux command returns a status when it terminates normally or abnormally. You can use command exit status in the shell script to display an error message or take some sort of action. For example, if tar command is unsuccessful, it returns a code which tells the shell script to send an e-mail to sys admin.
#    
#    Exit Status
#        - Every Linux command executed by the shell script or user, has an exit status.
#        - The exit status is an integer number.
#        - The Linux man pages stats the exit statuses of each command.
#        - 0 exit status means the command was successful without any errors.
#        - A non-zero (1-255 values) exit status means command was failure.
#        - You can use special shell variable called ? to get the exit status of the previously executed command. To print ? variable use the echo command:
#    
#    How Do I See Exit Status Of The Command?
#    Type the following command:
#        date
#    To view exist status of date command, enter:
#        echo $?
#    Sample Output:
#        0

# set var 
PASSWD_FILE=/etc/passwd
 
# get user name
read -p "Enter a user name : " username
 
# try to locate username in in /etc/passwd
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