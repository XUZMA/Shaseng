#!/bin/bash

#    http://bash.cyberciti.biz/guide/Numeric_comparison
#    
#    Numeric comparison
#    Operator	 Syntax	                     Description
#    eq    	INTEGER1 -eq INTEGER2	    INTEGER1 is equal to INTEGER2	
#    ge	        INTEGER1 -ge INTEGER2	    INTEGER1 is greater than or equal to INTEGER2	
#    gt	        INTEGER1 -gt INTEGER2	    INTEGER1 is greater than INTEGER2	
#    le	        INTEGER1 -le INTEGER2	    INTEGER1 is less than or equal to INTEGER2	
#    lt	        INTEGER1 -lt INTEGER2	    INTEGER1 is less than INTEGER2	
#    ne	        INTEGER1 -ne INTEGER2	    INTEGER1 is not equal to INTEGER2	
#    

read -p "Please enter and confirm number 10 via keyboard : " n
if test $n -eq 10
then
    echo "Thanks for entering 10 number."
fi

read -p "Enter number >= 10 : " n
if test $n -ge 10
then
    echo "$n is greater than or equal to 10"
fi

read -p "Enter number > 20 : " n
if test $n -gt 20
then
    echo "$n is greater than 20."
fi

read -p "Enter backup level : " n
if test $n -le 6
then
    echo "Incremental backup requested."
fi

if test $n -eq 7
then
    echo "Full backup requested."
fi

read -p "Do not enter negative number here : " n
if test $n -lt 0
then
    echo "Dam! you entered negative number!!"
fi

read -p "Do not enter -1 number here : " n
if test $n -ne -1
then
    echo "Thanks for not entering -1."
fi
