#!/bin/bash


#    http://bash.cyberciti.biz/guide/The_case_statement
#    The case statement
#    
#    The case statement is good alternative to multilevel if-then-else-fi statement. It enable you to match several values against one variable. It is easier to read and write.
#    Syntax
#    The syntax is as follows:
#    
#              case  $variable-name  in
#                    pattern1)       
#         		    command1
#                        ...
#                        ....
#                        commandN
#                        ;;
#                    pattern2)
#         		    command1
#                        ...
#                        ....
#                        commandN
#                        ;;            
#                    patternN)       
#         		    command1
#                        ...
#                        ....
#                        commandN
#                        ;;
#                    *)              
#              esac 
#    OR
#    
#              case  $variable-name  in
#                    pattern1|pattern2|pattern3)       
#         		    command1
#                        ...
#                        ....
#                        commandN
#                        ;;
#                    pattern4|pattern5|pattern6)
#         		    command1
#                        ...
#                        ....
#                        commandN
#                        ;;            
#                    pattern7|pattern8|patternN)       
#         		    command1
#                        ...
#                        ....
#                        commandN
#                        ;;
#                    *)              
#              esac 
#    
#        - The case statement allows you to easily check pattern (conditions) and then process a command-line if that condition evaluates to true.
#        - In other words the $variable-name is compared against the patterns until a match is found.
#        - *) acts as default and it is executed if no match is found.
#        - The pattern can include wildcards.
#        - You must include ;; at the end of each commandN. The shell executes all the statements up to the two semicolons that are next to each other.
#        - The esac is always required to indicate end of case statement.

# if no command line arg given
# set rental to Unknown
if [ -z $1 ]
then
  rental="*** Unknown vehicle ***"
elif [ -n $1 ]
then
# otherwise make first arg as a rental
  rental=$1
fi
 
# use case statement to make decision for rental
case $rental in
   "car") echo "For $rental rental is Rs.20 per k/m.";;
   "van") echo "For $rental rental is Rs.10 per k/m.";;
   "jeep") echo "For $rental rental is Rs.5 per k/m.";;
   "bicycle") echo "For $rental rental 20 paisa per k/m.";;
   "enfield") echo "For $rental rental Rs.3  per k/m.";;
   "thunderbird") echo "For $rental rental Rs.5 per k/m.";;
   *) echo "Sorry, I can not get a $rental rental  for you!";;
esac

NOW=$(date +"%a")
case $NOW in
	Mon)	
		echo "Full backup";;
	Tue|Wed|Thu|Fri)
		echo "Partial backup";;
	Sat|Sun)	
		echo "No backup";;
	*) ;;
esac