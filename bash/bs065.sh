#!/bin/bash

#    http://bash.cyberciti.biz/guide/Break_statement
#    How To Break Out Of a Nested Loop
#    A nested loop means loop within loop. You can break out of a certain number of levels in a nested loop by adding break n statement. n is the number of levels of nesting.
#    
for i in 1 2
    do
        echo "$i"
        while true
            do
                read -p "Enter number ( -9999 to exit ) : " n
                # break while loop if input is -9999  
                [ $n -eq -9999 ] && { echo "Bye!"; break 1; }
                isEvenNo=$(( $n % 2 ))  # get modules 
                [ $isEvenNo -eq 0 ] && echo "$n is an even number." || echo "$n is an odd number."
            done
    done