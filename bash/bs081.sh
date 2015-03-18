#!/bin/bash

#    http://bash.cyberciti.biz/guide/Writing_output_to_files
#    
#    Writing output to files
#    You need to use the redirection symbol, >, to send data to a file.
#    
#    Append Output To Files
#    Use the >> redirection symbols to append to a file.
#    
#    Avoid Overwriting To Files
#    To disallow existing regular files to be overwritten with the > operator set noclobber option as follows: 
#    set -C
#    To enable existing regular files to be overwritten with the > operator set noclobber option as follows:
#    set +C
#    
#    Reading and Writing From Files
#    with the < operator

echo "Test" > ./test.txt
cat test.txt
set -C
echo "Test 123" > ./test.txt
cat test.txt
set +C
echo "Test 123" > ./test.txt
cat test.txt
rm test.txt