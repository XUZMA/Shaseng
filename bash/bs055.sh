#!/bin/bash

#    http://bash.cyberciti.biz/guide/For_loop
#    
#    The for loop syntax
#    
#    The for loop syntax is as follows:
#    
#                for var in item1 item2 ... itemN
#                do
#                        command1
#                        command2
#                        ....
#                        ...
#                        commandN
#                done
#    The for loop numerical explicit list syntax:
#    
#                for var in list-of-values
#                do
#                        command1
#                        command2
#                        ....
#                        ...
#                        commandN
#                done
#    The for loop explicit file list syntax:
#    
#                for var in file1 file2 file3 fileN
#                do
#                        command1
#                        command2
#                        ....
#                        ...
#                        commandN
#                done
#    The for loop variable's contents syntax:
#    
#                for var in $fileNames
#                do
#                        command1
#                        command2
#                        ....
#                        ...
#                        commandN
#                done
#    The for loop command substitution syntax:
#    
#                for var in $(Linux-command-name)
#                do
#                        command1
#                        command2
#                        ....
#                        ...
#                        commandN
#                done
#    

for i in 1 2 3 4 5
do
  echo "Welcome $i times."
done
