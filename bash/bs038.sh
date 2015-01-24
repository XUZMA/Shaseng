#!/bin/bash

#    http://bash.cyberciti.biz/guide/Multilevel_if-then-else
#    
#    Multilevel if-then-else
#    
#    if..elif..else..fi allows the script to have various possibilities and conditions. This is handy, when you want to compare one variable to a different values.
#    
#               if condition
#               then
#                           condition is true
#                           execute all commands up to elif statement
#               elif condition1 
#               then
#                           condition1 is true
#                           execute all commands up to elif statement  
#               elif condition2
#               then
#                           condition2 is true
#                           execute all commands up to elif statement          
#               elif conditionN
#               then
#                           conditionN is true
#                           execute all commands up to else statement          
#               else
#                           None of the above conditions are true
#                           execute all commands up to fi
#               fi
#    In if..elif..else..fi structure, the block of the first true condition is executed. If no condition is true, the else block, is executed.
#    

read -p "Enter a number : " n
if
    [ $n -gt 0 ]
then
    echo "$n is a positive."
elif
    [ $n -lt 0 ]
then
    echo "$n is a negative."
elif
    [ $n -eq 0 ]
then
    echo "$n is zero number."
else
    echo "Oops! $n is not a number."
fi