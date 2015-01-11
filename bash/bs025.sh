#!/bin/bash

#    http://bash.cyberciti.biz/guide/Path_name_expansion
#    
#    Path name expansion
#    Bash shell support path name expansion using the following techniques.
#    
#    1 Curly braces
#    A curly braces ({..}) expands to create pattern and syntax is:
#    { pattern1, pattern2, patternN }
#    text{ pattern1, pattern2, patternN }
#    text1{ pattern1, pattern2, patternN }text2
#    command something/{ pattern1, pattern2, patternN }
#    
#    2 Wildcards
#    Bash supports the following three simple wildcards:
#    * - Matches any string, including the null string
#    ? - Matches any single (one) character.
#    [...] - Matches any one of the enclosed characters.

echo file{1,2,3}.txt
echo file{1..5}.txt
echo "------------------------------------------------"
ls ./*.sh
echo "------------------------------------------------"
ls ./bs0[1,2]*.sh
echo "------------------------------------------------"
ls ./bs0[1,2][1,2].sh
echo "------------------------------------------------"
ls bs02?.sh
