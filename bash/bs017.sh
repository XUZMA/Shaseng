#!/bin/bash

#
# examples from
# http://bash.cyberciti.biz/guide/Unset
# Unset
#
# Use unset command to delete the variables during program execution. It can remove both functions and shell variables.

vech=Bus
echo $vech
unset vech
echo $vech