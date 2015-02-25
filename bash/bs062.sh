#!/bin/bash

#    http://bash.cyberciti.biz/guide/Exit_select_loop
#    Exit select loop
#    

#    You can exiting the select loop statement either pressing Ctrl+C or by adding the exit option as follows:

#!/bin/bash
# Set PS3 prompt
PS3="Enter the space shuttle to get quick information : "
 
# set shuttle list
# exit option 
select shuttle in columbia endeavour challenger discovery atlantis enterprise pathfinder exit
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
                exit)
        	        echo "Bye!"
                        break
                        ;;
		*)		
			echo "Error: Please try again (select 1..8)!"
			;;		
	esac
done