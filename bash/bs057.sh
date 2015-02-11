#!/bin/bash

#    http://bash.cyberciti.biz/guide/While_loop
#    While loop
#    
#    The while statement is used to execute a list of commands repeatedly.
#    
#    The while loop syntax
#    The syntax is:
#    
#               while [ condition ]
#               do
#                     command1
#                     command2
#                     ..
#                     ....
#                     commandN
#               done
#    Command1..commandN will execute while a condition is true. To read a text file line-by-line, use the following syntax:
#    
#               while IFS= read -r line
#               do
#                     command1 on $line
#                     command2 on $line
#                     ..
#                     ....
#                     commandN
#               done < "/path/to/filename"
#    OR
#    
#               while IFS= read -r field1 filed2 field3 ... fieldN
#               do
#                     command1 on $field1
#                     command2 on $field1 and $field3
#                     ..
#                     ....
#                     commandN on $field1 ... $fieldN
#               done < "/path/to dir/file name with space"
#    IFS is used to set field separator (default is while space). The -r option to read command disables backslash escaping (e.g., \n, \t). This is failsafe while read loop for reading text files.


# set n to 1
n=1
 
# continue until $n equals 5
while [ $n -le 5 ]
do
	echo "Welcome $n times."
	n=$(( n+1 ))	 # increments $n
done

file=./bs057.sh
while IFS= read -r line
do
        # echo line is stored in $line
	echo $line
done < "$file"
