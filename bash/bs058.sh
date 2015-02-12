#!/bin/bash

#    http://bash.cyberciti.biz/guide/Infinite_while_loop
#    Infinite while loop
#    
#    You can use : special command with while loop to tests or set an infinite loop or an endless loop. An infinite loop occurs when the condition will never be met, due to some inherent characteristic of the loop. There are a few situations when this is desired behavior.
#    To set an infinite while loop use:
#        true command - do nothing, successfully (always returns exit code 0)
#        false command - do nothing, unsuccessfully (always returns exit code 1)
#        : command - no effect; the command does nothing (always returns exit code 0)
#    

# set an infinite loop
while :
do
	clear
        # display menu
        echo "Server Name - $(hostname)"
	echo "-------------------------------"
	echo "     M A I N - M E N U"
	echo "-------------------------------"
	echo "1. Display date and time."
	echo "2. Display what users are doing."
	echo "3. Display network connections."
	echo "4. Exit"
        # get input from the user 
	read -p "Enter your choice [ 1 -4 ] " choice
        # make decision using case..in..esac 
	case $choice in
		1)
			echo "Today is $(date)"
			read -p "Press [Enter] key to continue..." readEnterKey
			;;
		2) 
			w	
			read -p "Press [Enter] key to continue..." readEnterKey
			;;
		3)
			netstat -nat
			read -p "Press [Enter] key to continue..." readEnterKey
			;;
		4)
			echo "Bye!"
			exit 0
			;;
		*)
			echo "Error: Invalid option..."	
			read -p "Press [Enter] key to continue..." readEnterKey
			;;
	esac		
 
done