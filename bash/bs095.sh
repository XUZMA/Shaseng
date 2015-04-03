#!/bin/bash

#    http://bash.cyberciti.biz/guide/Multiple_commands
#    Multiple commands
#    
#    You can build a sequences of commands using the ; character (operator) and syntax is:
#        command1 ; command2 ; commandN
#    OR
#        { command1; command2 }
#    This way you can run commands one after the other. 
#    

#run
#./bs095.sh
#./bs095.sh 1 + 5
#./bs095.sh 10 \* 5

a=$1
b=$3
op=$2
ans=0
 
# display usage
# run commands one after the other using ; chracter
[ $# -eq 0 ] && { echo -e "Usage: $0 num1 op num2\n\t $0 1 + 5";  exit 1; }
 
case $op in
	+)
		ans=$((( a+b )));;
	-)	
		ans=$((( a-b )));;
	/) 
		ans=$((( a/b )));;	
	\*|x) 
		ans=$((( a*b )));;
	*)				
		echo "Unknown operator."
		exit 2;;
esac		
echo "$a $op $b = $ans"

