#!/bin/bash

#
# examples from
# http://bash.cyberciti.biz/guide/Rules_for_Naming_variable_name
# Rules for Naming variable name

no=10
No=11
NO=20
nO=2

echo "$no" # print 10 but not 20
echo "$No" # print 11 but not 20
echo "$nO" # print 2 but not 20
echo "$NO" # print 20
