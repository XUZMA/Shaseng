#!/bin/bash

#    http://bash.cyberciti.biz/guide/If_structures_to_execute_code_based_on_a_condition
#    
#    If structures to execute code based on a condition
#    
#    Now, you can use the if statement to test a condition. if command The general syntax is as follows:
#    
#    if condition
#    then
#         command1 
#         command2
#         ...
#         commandN 
#    fi
#    OR
#    
#    if test var == value
#    then
#         command1 
#         command2
#         ...
#         commandN 
#    fi
#    OR
#    
#    if test -f /file/exists
#    then
#         command1 
#         command2
#         ...
#         commandN 
#    fi
#    OR
#    
#    if [ condition ]
#    then
#          command1
#          command2
#          ....
#          ..
#    fi
#    
#    If given condition is true than the command1, command2..commandN are executed. Otherwise script continues directly to the next statement following the if structure.

read -p "Enter a password" pass
if test "$pass" == "jerry"
then
     echo "Password verified."
fi

read -p "Enter # 5 : " number
if test $number == 5 
then
    echo "Thanks for entering # 5"
fi
if test $number != 5 
then
    echo "I told you to enter # 5. Please try again."
fi