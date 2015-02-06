#!/bin/bash


#    http://bash.cyberciti.biz/guide/Exit_command
#    
#    Exit command
#    
#    The syntax is as follows:
#     exit N
#    
#        - The exit statement is used to exit from the shell script with a status of N.
#        - Use the exit statement to indicate successful or unsuccessful shell script termination.
#        - The value of N can be used by other commands or shell scripts to take their own action.
#        - If N is omitted, the exit status is that of the last command executed.
#        - Use the exit statement to terminate shell script upon an error.
#        - If N is set to 0 means normal shell exit. Create a shell script called exitcmd.sh:
#    
#    To see exit status of the script, enter (see the exit status of a command for more information about special shell variable $?) :
#        echo $?

dir .

if [ $? -ne 0 ]
then
   # die with unsuccessful shell script termination exit status # 3
   echo "An error occurred while dir ."
   exit 3
else
   echo "ok while dir ."
fi