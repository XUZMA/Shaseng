#!/bin/bash

#    http://bash.cyberciti.biz/guide/Reads_from_the_file_descriptor_(fd)
#    
#    Reads from the file descriptor (fd)
#    
#    You can use the read command to read data from the keyboard or file. You can pass the -u option to the read command from file descriptor instead of the keyboard. This is useful to read file line by line or one word at a time. 
#    
#    Syntax
#    
#        read -u fd var1 var2 ... varN
#    
#    OR use the while loop to read the entire file line:
#    
#               while IFS= read -u fd -r line
#               do
#                     command1 on $line
#                     command2 on $line
#                     ..
#                     ....
#                     commandN
#               done

# ./bs088.sh /etc/resolv.conf


# Shell script utility to read a file line line.
FILE="$1"
 
# make sure filename supplied at a shell prompt else die
[ $# -eq 0 ] && { echo "Usage: $0 filename"; exit 1; } 
 
# make sure file exist else die
[ ! -f $FILE ] && { echo "Error - File $FILE does not exists." ; exit 2; }
 
# make sure file readonly else die
[ ! -r $FILE ] && { echo "Error - Can not read $FILE file."; exit 3; }
 
IFS=$(echo -en "\n\b")
 
exec 3<$FILE
while read -u 3 -r line
do
	echo $line
done
 
# Close fd # 3
exec 3<&-
 
# exit with 0 success status 
exit 0