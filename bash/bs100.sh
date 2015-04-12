#!/bin/bash

#    http://bash.cyberciti.biz/guide/Pipes
#    A shell pipe is a way to connect the output of one program to the input of another program without any temporary file.
#
#    Syntax
#
#    command1 | command2
#    command1 | command2 | commandN
#    command1 arg1 | command2 arg1 arg2
#    get_data_command | verify_data_command | process_data_command | format_data_command > output.data.file
#    get_data_command < input.data.file | verify_data_command | process_data_command | format_data_command > output.data.file

#    http://bash.cyberciti.biz/guide/How_to_use_pipes_to_connect_programs

who | grep -i xz