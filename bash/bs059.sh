#!/bin/bash

#    http://bash.cyberciti.biz/guide/Until_loop
#    Until loop
#    
#    Just like while loop, until loop is also based on a condition.
#    
#    Syntax
#    The until loop continues running commands as long as the item in list continues to evaluate true. Once an item evaluates false, the loop is exited. The syntax is:
#    
#    until [ condition ]
#    do
#       command1
#       command2
#       ...
#       ....
#       commandN
#    done
#    
#    The while loop vs the until loop
#        - The until loop executes until a nonzero status is returned.
#        - The while command executes until a zero status is returned.
#        - The until loop always executes at least once.

i=1
until [ $i -gt 6 ]
do
	echo "Welcome $i times."
	i=$(( i+1 ))
done