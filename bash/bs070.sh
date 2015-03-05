#!/bin/bash

#    http://bash.cyberciti.biz/guide/Standard_input
#    Standard input
#    
#    Standard input is the default input method, which is used by all commands to read its input.
#    It is denoted by zero number (0).
#    Also known as stdin.
#    The default standard input is the keyboard.
#    < is input redirection symbol and syntax is:
#     command < filename

cat < /etc/passwd
echo "================================================"
sort < /etc/resolv.conf