#!/bin/bash

#
# examples from
# http://bash.cyberciti.biz/guide/Perform_arithmetic_operations
# Perform arithmetic operations
#

x1=5
y1=10
ans1=$(( x1 + y1 ))
echo "$x1 + $y1 = $ans1"

read -p "Enter two numbers : " x2 y2
ans2=$(( x2 + y2 ))
echo "$x2 + $y2 = $ans2"