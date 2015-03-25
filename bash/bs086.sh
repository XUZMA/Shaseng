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

# Let us assign the file descriptor to file for input fd # 3 is Input file 
exec 3< /etc/resolv.conf
 
# Let us assign the file descriptor to file for output fd # 3 is Input file 
exec 4> ./output.txt
 
# Use read command to read first line of the file using fd # 3
read -u 3 a b
 
# Display data on screen
echo "Data read from fd # 3:"
echo $a $b
 
# Write the same data to fd # 4 i.e. our output file
echo "Writing data read from fd #3 to fd#4 ... "
echo  "Field #1 - $a " >&4
echo  "Field #2 - $b " >&4
 
# Close fd # 3 and # 4
exec 3<&-
exec 4<&-