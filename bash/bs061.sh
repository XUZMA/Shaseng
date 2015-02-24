#!/bin/bash

#    http://bash.cyberciti.biz/guide/Select_loop
#    Select loop
#    The Bash Shell also offer select Loop, the syntax is:
#    
#    select varName in list
#    do
#        command1
#        command2
#        ....
#        ......
#        commandN
#    done
#    OR (combine both select and case statement)
#    
#    select varName in list
#    do
#    	case $varName in
#    		pattern1)
#    			command1;;
#    		pattern2)
#    			command2;;
#    		pattern1)
#    			command3;;
#    		*)
#    			echo "Error select option 1..3";;
#    	esac			
#    done
#    
#    Select command use PS3 variable to print its prompt.
#    Each word in list is printed on screen preceded by a number.
#    If the line consists of the number corresponding to one of the displayed words (from the list), then varName is set to that word. You can use if..else.fi or case..in..esac to make a decision.
#    If the line is empty, WORDS and the prompt are redisplayed.
#    If EOF (end of file) is read, the command completes.
#    The loop continues until a break (CTRL+C) is encountered.

# The default value for PS3 is set to #?.
# Change it i.e. Set PS3 prompt
PS3="Enter the space shuttle to get quick information : "
 
# set shuttle list
select shuttle in columbia endeavour challenger discovery atlantis enterprise pathfinder
do
	case $shuttle in
		columbia)
			echo "--------------"
			echo "Space Shuttle Columbia was the first spaceworthy space shuttle in NASA's orbital fleet."
			echo "--------------"
			;;
		endeavour)
			echo "--------------"		
			echo "Space Shuttle Endeavour is one of three currently operational orbiters in the Space Shuttle." 
			echo "--------------"		
			;;
		challenger) 
			echo "--------------"				
		    echo "Space Shuttle Challenger was NASA's second Space Shuttle orbiter to be put into service."
			echo "--------------"				    
			;;		
		discovery) 
			echo "--------------"		
			echo "Discovery became the third operational orbiter, and is now the oldest one in service."
			echo "--------------"							
			;;		
		atlantis)
			echo "--------------"		
			echo "Atlantis was the fourth operational shuttle built."
			echo "--------------"							
			;;
		enterprise)
			echo "--------------"		
			echo "Space Shuttle Enterprise was the first Space Shuttle orbiter."
			echo "--------------"							
			;;		
		pathfinder)
			echo "--------------"		
			echo "Space Shuttle Orbiter Pathfinder is a Space Shuttle simulator made of steel and wood."
			echo "--------------"							
			;;
		*)		
			echo "Error: Please try again (select 1..7)!"
			;;		
	esac
done