#!/bin/bash

#
# examples from
# http://bash.cyberciti.biz/guide/Create_an_integer_variable
# Create an integer variable

# create an integer variable use the declare command

# set x,y and z to an integer data type
declare -i x=10
declare -i y=10
declare -i z=0
z=$(( x + y ))
echo "$x + $y = $z"
 
# try setting to character 'a'
#     When you try to set the variable x to character 'a', 
#     shell converted it to an integer attribute i.e. zero number.

x=a
z=$(( x + y ))
echo "$x + $y = $z"