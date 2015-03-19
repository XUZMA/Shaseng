#!/bin/bash

#    http://bash.cyberciti.biz/guide/Assigns_the_file_descriptor_%28fd%29_to_file_for_output
#    
#    Assigns the file descriptor (fd) to file for output
#    
#    File descriptors 0, 1 and 2 are reserved for stdin, stdout and stderr respectively. 
#    However, bash shell allows you to assign a file descriptor to an input file or output file.
#    This is done to improve file reading and writing performance. This is known as user defined file descriptors. 

#    Syntax
#    You can assign a file descriptor to an output file with the following syntax:
#    
#        exec fd> output.txt
#    
#        where, fd >= 3

# Let us assign the file descriptor to file for output
# fd # 3 is output file 
exec 3> ./output.txt
 
# Executes echo commands and  # Send output to 
# the file descriptor (fd) # 3 i.e. write output to ./output.txt
echo "This is a test" >&3
 
# Write date command output to fd # 3
date >&3
 
# Close fd # 3
exec 3<&-