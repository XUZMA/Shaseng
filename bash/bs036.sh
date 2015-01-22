#!/bin/bash

#    http://bash.cyberciti.biz/guide/If..else..fi
#    
#    If..else..fi
#    if..else..fi allows to make choice based on the success or failure of a command. For example, find out if file exists (true condition) or not (false condition) and take action based on a condition result.
#    
#    if..then..else Syntax
#               if command
#               then
#                           command executed successfully
#                           execute all commands up to else statement
#                           or to fi if there is no else statement
#    
#               else
#                           command failed so
#                           execute all commands up to fi
#               fi
#    OR
#    
#               if test var -eq val
#               then
#                           command executed successfully
#                           execute all commands up to else statement
#                           or to fi if there is no else statement
#    
#               else
#                           if command failed then
#                           execute all commands up to fi
#               fi
#    OR
#    
#               if [ condition ]
#               then
#                           if given condition true
#                           execute all commands up to else statement
#                           or to fi if there is no else statement
#    
#               else
#                           if given condition false 
#                           execute all commands up to fi
#               fi
#    


read -p "Enter a password" pass
if test "$pass" = "jerry"
then
     echo "Password verified."
else
     echo "Access denied."	
fi

read -p "Enter number : " n
if test $n -ge 0
then
	echo "$n is positive number."
else
	echo "$n number is negative number."
fi
