#!/bin/bash

#    http://bash.cyberciti.biz/guide/Conditional_expression
#    
#    Conditional expression
#    
#    The test command is used to check file types and compare values. You can also use [ as test command. It is used for:
#    
#    File attributes comparisons
#    Perform string comparisons.
#    Arithmetic comparisons.
#    Syntax
#    [ condition ]
#    OR
#    
#    [ ! condition ]
#    OR
#    
#    [ condition ] && true-command
#    OR
#    
#    [ condition ] || false-command
#    OR
#    
#    [ condition ] && true-command || false-command
#    

[ 5 == 5 ] && echo "Yes" || echo "No"
[ 5 == 15 ] && echo "Yes" || echo "No"
[ 5 != 10 ] && echo "Yes" || echo "No"
[ -f /etc/resolv.conf ] && echo "File /etc/resolv.conf found." || echo "File /etc/resolv.conf not found."
[ -f /etc/resolv1.conf ] && echo "File /etc/resolv.conf found." || echo "File /etc/resolv.conf not found."
