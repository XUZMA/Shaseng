#!/bin/bash

#    http://bash.cyberciti.biz/guide/Standard_error
#    Standard error
#    
#    Standard error is the default error output device, which is used to write all system error messages.
#    It is denoted by two number (2).
#    Also known as stderr.
#    The default standard input is the screen or monitor.
#    2> is input redirection symbol and syntax is:
#     command 2> errors.txt

find / -iname "*.conf" 2>fileerrors.txt
cat fileerrors.txt