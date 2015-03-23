#!/bin/bash

#    http://bash.cyberciti.biz/guide/Closes_the_file_descriptor_(fd)
#    To closes the file descriptor use the following syntax:
#        exec fd<&-
#    To close fd # 5, enter:
#        exec 5<&-

# Let us assign the file descriptor to file for input
# fd # 3 is Input file 
exec 3< /etc/resolv.conf
 
# Executes cat commands and  read input from 
# the file descriptor (fd) # 3 i.e. read input from /etc/resolv.conf file
cat <&3
 
# Close fd # 3
exec 3<&-