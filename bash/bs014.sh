#!/bin/bash

#
# examples from
# http://bash.cyberciti.biz/guide/Echo_Command
# Echo Command
# To display the value of a variable, either use echo or printf command .

# Display welcome message, computer name and date
echo "*** Backup Shell Script ***"
echo
echo "*** Run time: $(date) @ $(hostname)"
echo
 
# Define variables
BACKUP="/nas05"
NOW=$(date +"%d-%m-%Y")
 
# Let us start backup
echo "*** Dumping MySQL Database to $BACKUP/$NOW..."
 
# Just sleep for 3 secs
sleep 3
 
# And we are done...
echo
echo "*** Backup wrote to $BACKUP/$NOW/latest.tar.gz"

echo "************************************************"

vech="Car"
printf "%s\n" $vech
printf "%1s\n" $vech
printf "%1.1s\n" $vech
printf "%1.2s\n" $vech
printf "%1.3s\n" $vech
printf "%10.3s\n" $vech
printf "%10.1s\n" $vech
no=10
printf "%d\n" $no
big=5355765
printf "%e\n" $big
printf "%5.2e\n" $big
sales=54245.22
printf "%f\n" $sales
printf "%.2f\n" $sales
