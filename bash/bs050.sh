#!/bin/bash


#    http://bash.cyberciti.biz/guide/Create_usage_messages
#    
#    Create usage messages
#    Many Linux commands display an error or usage information when required command line option is not passed. For example, try the following command:
#        gcc
#    Sample outputs:
#        gcc: no input files
#    
#    How Do I Add Usage Functionality To The Script?
#    A shell script that depends upon user input must:
#        Verify the number of arguments passed to it.
#        Display an error or usage message if arguments or input is not passed to the script. Your shell script can also create such usage message using if command and $# special shell variable parameter.
#    

# first command line argument
user=$1

# Verify the type of input and number of values
# Display an error message if the username (input) is not correct
# Exit the shell script with a status of 1 using exit 1 command.
[ $# -eq 0 ] && { echo "Usage: $0, missing username"; exit 1; }

passwddb=/etc/passwd

grep "^$user" $passwddb >/dev/null
retval=$?    # store exit status of grep

# If grep found username, it sets exit status to zero
# Use exit status to make the decision 
[ $retval -eq 0 ] && echo "$user found" || echo "$user not found"
