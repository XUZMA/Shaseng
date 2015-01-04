#!/bin/bash

#
# examples from
# http://bash.cyberciti.biz/guide/Getting_User_Input_Via_Keyboard
# Getting User Input Via Keyboard
#

# read three numbers and assigned them to 3 vars
read -p "Enter number one : " n1
read -p "Enter number two : " n2
read -p "Enter number three : " n3
 
# display back 3 numbers - punched by user. 
echo "Number1 - $n1"
echo "Number2 - $n2"
echo "Number3 - $n3"