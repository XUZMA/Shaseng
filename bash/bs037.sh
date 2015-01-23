#!/bin/bash

#    http://bash.cyberciti.biz/guide/Nested_ifs
#    
#    Nested ifs
#    
#    You can put if command within if command and create the nested ifs as follows:
#    
#    	if condition
#    	then
#    		if condition
#    		then
#    			.....
#    			..
#    			do this
#    		else
#    			....
#    			..
#    			do this
#    		fi
#    	else
#    		...
#    		.....
#    		do this
#    	fi

read -p "Enter account" account
if
    test "$account" = "Linus"
then
    read -p "Enter password" password
    if
        test "$password" = "123456"
    then 
        echo "Please come in."
    else
        echo "false password."
    fi
else
    echo "Access denied."	
fi
