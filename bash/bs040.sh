#!/bin/bash

#    http://bash.cyberciti.biz/guide/Conditional_execution
#    Conditional execution
#    You can link two commands under bash shell using conditional execution based on the exit status of the last command. This is useful to control the sequence of command execution. Also, you can do conditional execution using the if statement. The bash support the following two conditional executions:
#        Logical AND && - Run second command only if first is successful.
#        Logical OR || - Run second command only if first is not successful.
#    
#    http://bash.cyberciti.biz/guide/Logical_AND
#    Logical AND
#    
#    Syntax
#    command1 && command2
#    OR
#    
#    First_command && Second_command
#    command2 is executed if, and only if, command1 returns an exit status of zero (true). In other words, run command1 and if it is successfull, then run command2.
#    
#    Example
#    Type the following at a shell prompt:
#    
#    rm /tmp/filename && echo "File deleted."
#    The echo command will only run if the rm command exits successfully with a status of zero. If file is deleted successfully the rm command set the exit stats to zero and echo command get executed.
#    
#    Lookup a username in /etc/passwd file
#    grep "^vivek" /etc/passwd && echo "Vivek found in /etc/passwd"
#    Exit if a directory /tmp/foo does not exist
#    test ! -d /tmp/foo && { read -p "Directory /tmp/foo not found. Hit [Enter] to exit..." enter; exit 1; }

test ! -d /tmp/foo && { read -p "Directory /tmp/foo not found. Hit [Enter] to exit..." enter; exit 1; }