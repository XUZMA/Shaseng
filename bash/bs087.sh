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


# The following shell script displays its actual fd numbers and file associated with them (displayfds.sh):

# Let us assign the file descriptor to file for input fd # 3 is Input file 
exec 3< /etc/resolv.conf
 
# Let us assign the file descriptor to file for output fd # 3 is Input file 
exec 4> ./output.txt
# Use read command to read first line of the file
read -u 3 a b
 
echo "*** My pid is $$"
mypid=$$
 
echo "*** Currently open files by $0 scripts.."
 
ls -l /proc/$mypid/fd
 
# Close fd # 3 and # 4
exec 3<&-
exec 4>&-