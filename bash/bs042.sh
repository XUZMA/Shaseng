#!/bin/bash

#    http://bash.cyberciti.biz/guide/Logical_Not_!
#    Logical Not !
#    Logical not (!) is boolean operator, which is used to test whether expression is true or not. For example, if file not exists, then display an error on screen.
#    
#    Syntax
#    The test command syntax is as follows:
#    
#    ! expression
#    OR
#    
#    [ ! expression ]
#    OR
#    
#    if test ! condition
#    then
#         command1
#         command2
#    fi
#    if [ ! condition ]
#    then
#         command1
#         command2
#    fi
#    Where,
#    
#    True if expression is false.

test ! -f /etc/resolv.conf && echo "File /etc/resolv.conf not found."