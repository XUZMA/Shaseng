#!/bin/bash


#    http://bash.cyberciti.biz/guide/Dealing_with_case_sensitive_pattern
#    
#    Dealing with case sensitive pattern
#    
#    Words can differ in meaning based on differing use of uppercase and lowercase letters. Linux allow a file to have more than one name. For example, Sample.txt, SAMPLE.txt, and SAMPLE.TXT all are three different file names. The case sensitive problem also applies to the case statement.
#    
#    use the linux command tr:
#    exampel:
#        echo abc | tr [:lower:] [:upper:]
#    

# A shell script to backup mysql, webserver and files to tape
# allinonebackup.sh version 2.0
# -------------------------------------------------------
# covert all passed arguments to lowercase using
# tr command and here strings
opt=$( tr '[:upper:]' '[:lower:]' <<<"$1" )
case $opt in
        sql)
                echo "Running mysql backup using mysqldump tool..."
                ;;
        sync)
                echo "Running backup using rsync tool..."
                ;;
        tar)
                echo "Running tape backup using tar tool..."
                ;;
        *)
        	    echo "Backup shell script utility"
                echo "Usage: $0 {sql|sync|tar}"
                echo "	sql  : Run mySQL backup utility."
                echo "	sync : Run web server backup utility."	
                echo "	tar  : Run tape backup utility."	;;
esac