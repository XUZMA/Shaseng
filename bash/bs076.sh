#!/bin/bash

#    http://bash.cyberciti.biz/guide/Here_strings
#    Here strings
#    
#    Here strings is just like here documents and syntax is:
#        command <<<$word
#    OR
#        command arg1 <<<"$word"

wc -w <<< "This is a test."
echo "================================================"
var="Neither in this world nor elsewhere is there any happiness in store for him who always doubts."
grep "nor" $var
