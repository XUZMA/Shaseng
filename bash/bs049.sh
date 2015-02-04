#!/bin/bash


#    http://bash.cyberciti.biz/guide/Parameters_Set_by_the_Shell
#    
#    Parameters Set by the Shell
#    
#    Bash shell set several special parameters. 
#    
#    All command line parameters or arguments can be accessed via $1, $2, $3,..., $9.
#        - $* holds all command line parameters or arguments.
#        - $# holds the number of positional parameters.
#        - $- holds flags supplied to the shell.
#        - $? holds the return value set by the previously executed command.
#        - $$ holds the process number of the shell (current shell).
#        - $! hold the process number of the last background command.
#        - $@ holds all command line parameters or arguments.

echo $#

status=$?
[ $status -eq 0 ] && echo "Lighttpd ... [Ok]" || echo "Lighttpd ... [Failed]"