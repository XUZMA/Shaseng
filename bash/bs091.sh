#!/bin/bash

#    http://bash.cyberciti.biz/guide/Linking_Commands

#    Operator
#            &
#    
#    Syntax
#            command arg &
#    
#    Description
#            The shell executes the command in the background in a subshell. The shell does not wait for the command to finish, and the return status is 0. The & operator runs the command in background while freeing up your terminal for other work.
#    
#    Example
#            In this example, find command is executed in background while freeing up your shell prompt.

find / -iname "*.pdf" > ./output.txt &
  