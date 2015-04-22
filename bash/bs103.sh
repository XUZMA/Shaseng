#!/bin/bash

#    http://bash.cyberciti.biz/guide/Output_redirection_in_pipes
#    
#    You redirect the standard output of the last command using a pipe with > or >> redirection symbol. The syntax is:
#    
#    command1 | command2 > output.txt
#    command1 | command2 arg1 > output.txt
#    command1 < input.txt | command2 > output.txt
#    command1 < input.txt | command2 arg1 arg2 | command3 arg1 > output.txt

ps -e -orss=,args= | sort -b -k1,1n > memory.txt