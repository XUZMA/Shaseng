#!/bin/bash

#    http://bash.cyberciti.biz/guide/String_comparison
#    String comparison
#    
#    String comparison can be done using test command itself.
#    
#    1 The strings are equal
#    Use the following syntax:
#    STRING1 = STRING2
#    
#    2 The strings are not equal
#    Use the following syntax:
#    STRING1 != STRING2
#    
#    3 The length of STRING is zero
#    Use the following syntax (this is useful to see if variable is empty or not):
#    -z STRING
#    

read -s -p "Enter your password " pass
echo 

if test -z $pass 
then
    echo "No password was entered!!! Cannot verify an empty password!!!"	
    exit 1
fi

if test "$pass" = "tom"
then
    echo "You are allowed to login!"
fi

if test "$pass" != "tom"
then
    echo "Wrong password!"
fi