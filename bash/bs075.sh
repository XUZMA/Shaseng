#!/bin/bash

#    http://bash.cyberciti.biz/guide/Here_documents
#    Here documents
#    
#    To create a here document use the following syntax:
#    
#    command <<HERE
#    text1
#    text2
#    testN
#    $varName
#    HERE
#    
#    This type of redirection tells the shell 
#    to read input from the current source (HERE)
#    until a line containg only word (HERE) is seen.
#    HERE word is not subjected to variable name, 
#    parameter expansion, arithmetic expansion, pathname expansion, or command substitution.
#    All of the lines read up to that point are then used as the standard input for a command.
#    Files are processed in this manner are commonly called here documents. 
#

wc -w <<EOF
This is a test.
Apple juice.
100% fruit juice and no added sugar, colour or preservative.
EOF

echo "================================================"

echo 'This is a test.' | wc -w

