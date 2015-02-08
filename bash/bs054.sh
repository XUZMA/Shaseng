#!/bin/bash

#    Solution # 3: Turn on nocasematch
#    If you turn on nocasematch option, shell matches patterns in a case-insensitive fashion when performing matching while executing case or [[ conditional commands.
#    
#    How do I turn on nocasematch option?
#    Type the following command:
#    
#    shopt -s nocasematch
#    How do I turn off nocasematch option?
#    Type the following command:
#    
#    shopt -u nocasematch
#    Here is an updated version of the same:
#    
#    #!/bin/bash
#    # A shell script to backup mysql, webserver and files to tape
#    opt=$1
#    # Turn on a case-insensitive matching (-s set nocasematch)
#    shopt -s nocasematch
#    case $opt in
#            sql)
#                    echo "Running mysql backup using mysqldump tool..."
#                    ;;
#            sync)
#                    echo "Running backup using rsync tool..."
#                    ;;
#            tar)
#                    echo "Running tape backup using tar tool..."
#                    ;;
#            *)
#            	    echo "Backup shell script utility"
#                    echo "Usage: $0 {sql|sync|tar}"
#                    echo "	sql  : Run mySQL backup utility."
#                    echo "	sync : Run web server backup utility."	
#                    echo "	tar  : Run tape backup utilty."	;;
#    esac
#     
#    # Turn off a case-insensitive matching (-u unset nocasematch)
#    shopt -u nocasematch

#    http://bash.cyberciti.biz/guide/Dealing_with_case_sensitive_pattern
#    
#    Dealing with case sensitive pattern
#    Solution # 2: Use regex with case patterns
#    
#    Case command pattern supports regular expressions, which provide a concise and flexible means for identifying words, or patterns of characters. For example, you can match tar pattern using the following syntax:
#        [Tt][Aa][Rr]
#        The above is called a bracket expression.
#        It matches a single character that is contained within the brackets.
#        For example, [tom] matches "t", "o", or "m".
#        [a-z] specifies a range which matches any lowercase letter from "a" to "z".
#        [Aa] matches "A", or "a".
#        [Tt][Aa][Rr] matches "tar", "TAR", "taR", "TaR", etc
#        With regex you can avoid the external tr command.

# A shell script to backup mysql, webserver and files to tape
opt=$1
 
#########################################################
# Use regex to match all command line arguments         #
# [Tt][Aa][Rr] matches "tar", "TAR", "taR", "TaR", etc  #
# [Ss][Qq][Ll] matches "sql", "SQL", "SQl", "SqL", etc  #
#########################################################
case $opt in
        [Ss][Qq][Ll])
                echo "Running mysql backup using mysqldump tool..."
                ;;
        [Ss][Yy][Nn][Cc])
                echo "Running backup using rsync tool..."
                ;;
        [Tt][Aa][Rr])
                echo "Running tape backup using tar tool..."
                ;;
        *)
        	    echo "Backup shell script utility"
                echo "Usage: $0 {sql|sync|tar}"
                echo "	sql  : Run mySQL backup utility."
                echo "	sync : Run web server backup utility."	
                echo "	tar  : Run tape backup utilty."	;;
esac