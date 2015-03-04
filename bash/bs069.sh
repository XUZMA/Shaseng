#!/bin/bash

#    http://bash.cyberciti.biz/guide/Input_and_Output
#    Input and Output
#    Almost all commands produce the output to screen or take input from the keyboard, but in Linux it is possible to send output to a file or to read input from a file. Each shell command has its own input and outputs. Before a command is executed, its input and output may be redirected using a special notation interpreted by the shell. For example, sending output of date command to a file instead of to the screen. Changing the default path of input or output is called redirection.
#    In Linux everything is a file.
#    Your hardware is also a file:
#    0 - Input - Keyboard (stdin)
#    1 - Output - Screen (stdout)
#    2 - Error - Screen (stderr)
#    The above three numbers are standard POSIX numbers and also known as file descriptors (FD). Every Linux command at least open the above streams to talk with users or other system programs.

date > output.txt
cat output.txt