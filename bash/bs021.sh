#!/bin/bash

#
# examples from
# http://bash.cyberciti.biz/guide/Create_the_constants_variable
# Create the constants variable
#
# The readonly buitin syntax is as follows:
#     readonly var
#     readonly varName=value
#
# The declare builtin syntax is as follows:
#     declare -r var
#     declare -r varName=value
#
# A constant variable can't be changed.
# And the readonly variable cannnot be unset (deleted).

readonly DATA=/home/sales/data/feb09.dat
echo $DATA