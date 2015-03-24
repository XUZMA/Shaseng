#!/bin/bash

#    http://bash.cyberciti.biz/guide/Opening_the_file_descriptors_for_reading_and_writing
#    Opening the file descriptors for reading and writing
#    
#    Bash supports the following syntax to open file for both reading and writing on file descriptor:
#    
#    exec fd<>fileName
#    
#        File descriptor 0 is used if fd is not specified.
#        If the file does not exist, it is created.
#        This syntax is useful to update file. 

FILENAME="./out.txt"
# Opening file descriptors # 3 for reading and writing
# i.e. /tmp/out.txt
exec 3<>$FILENAME
 
# Write to file
echo "Today is $(date)" >&3
echo "Fear is the path to the dark side. Fear leads to anger. " >&3
echo "Anger leads to hate. Hate leads to suffering." >&3
echo "--- Yoda" >&3
 
# close fd # 3
exec 3>&-