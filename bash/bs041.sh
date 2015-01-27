#!/bin/bash

#    http://bash.cyberciti.biz/guide/Logical_OR
#    Logical OR
#    Logical OR (||) is boolean operator. It can execute commands or shell functions based on the exit status of another command.
#    Syntax
#    command1 || command2
#    OR
#    
#    First_command || Second_command
#    command2 is executed if, and only if, command1 returns a non-zero exit status. In other words, run command1 successfully or run command2.
#    

grep "^vivek" /etc/passwd || echo "User vivek not found in /etc/passwd"