#!/bin/bash

#    http://bash.cyberciti.biz/guide/Linking_Commands

#    Operator
#            ||
#    
#    Syntax
#            command1 || command2
#    
#    Description
#            command2 is executed if and only if command1 returns a non-zero exit status i.e. command2 only runs if first command fails. 
#    
#    Example

grep "^vivek" /etc/passwd || echo "User vivek not found in /etc/passwd"