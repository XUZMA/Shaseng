#!/bin/bash

#    http://bash.cyberciti.biz/guide/Input_redirection_in_pipes
#    Input redirection in pipes
#         The input < redirection symbol can be used with pipes to get input from a file:
#    
#    command1 < input.txt | command2
#    command1 < input.txt | command2 arg1 | command3
#    
cat < bs102.sh | grep bs102
