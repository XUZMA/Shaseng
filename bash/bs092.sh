#!/bin/bash

#    http://bash.cyberciti.biz/guide/Linking_Commands

#    Operator
#            &&
#    
#    Syntax
#            command1 && command2
#    
#    Description
#            command2 is executed if, and only if, command1 returns an exit status of zero i.e. command2 only runs if first command1 run successfully.
#    
#    Example

[ ! -d ./backup ] && mkdir -p ./backup