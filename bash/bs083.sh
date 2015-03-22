#!/bin/bash

#    http://bash.cyberciti.biz/guide/Assigns_the_file_descriptor_%28fd%29_to_file_for_input
#    Assigns the file descriptor (fd) to file for input
#    To assign a file descriptor to an input file use the following syntax:
#    
#        exec fd< input.txt
#        where, fd >= 3.

# Let us assign the file descriptor to file for input
# fd # 3 is Input file 
exec 3< /etc/resolv.conf
 
# Executes cat commands and  read input from 
# the file descriptor (fd) # 3 i.e. read input from /etc/resolv.conf file
cat <&3
 
# Close fd # 3
exec 3<&-