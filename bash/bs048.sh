#!/bin/bash


#    http://bash.cyberciti.biz/guide/How_to_use_positional_parameters
#    
#    How to use positional parameters
#    ie.
#    How Do I Access Command-Line Arguments
#
#    All command line parameters ( positional parameters ) are available via special shell variable $1, $2, $3,...,$9.
#
#    A Note About $@ and $*
#    $@ expanded as "$1" "$2" "$3" ... "$n"
#    $* expanded as "$1y$2y$3y...$n", where y is the value of $IFS variable i.e. "$*" is one long string and $IFS act as an separator or token delimiters.
#    
#    run the shell
#    $./bs048.sh  BMW Ford Toyota

echo "The script name : $0"
echo "The value of the first argument to the script : $1"
echo "The value of the second argument to the script : $2"
echo "The value of the third argument to the script : $3"
echo "The number of arguments passed to the script : $#"

echo "The value of all command-line arguments (\$@ version) : $@"
IFS=", "
echo "The value of all command-line arguments (\$* version) : $*"
