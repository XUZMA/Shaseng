#!/bin/bash

#    http://bash.cyberciti.biz/guide/Continue_statement
#    Continue statement
#    
#    The continue statement is used to resume the next iteration of the enclosing FOR, WHILE or UNTIL loop.
#    
#    Syntax
#    continue
#    OR
#    
#    continue n
#    OR
#    
#    ...
#    ..
#    for i in something
#    do
#    	[ condition ] && continue
#    	cmd1
#    	cmd2
#    	
#    done
#    ..
#    ...
#    OR
#    
#    ...
#    ..
#    while true
#    do
#    	[ condition1 ] && continue
#    	cmd1
#    	cmd2
#    	[ condition2 ] && break
#    done
#    ..
#    ...

# A sample mysql backup script
# Must be run as the root user
# Written by Vivek Gite
# Last updated on : 23/Aug/2003
# ---------------------------------
# MySQL Login Info
MUSER="admin" 			# MySQL user
MHOST="192.168.1.100"		# MySQL server ip
MPASS="MySQLServerPassword" 	# MySQL password
 
# format dd-mm-yyyy 
NOW=$(date +"%d-%m-%Y")
 
# Backupfile path
BPATH=/backup/mysql/$NOW
 
# if backup path does not exists, create it 
[ ! -d $BPATH ] && mkdir -p $BPATH
 
# get database name lists
DBS="$(/usr/bin/mysql -u $MUSER -h $MHOST -p$MPASS -Bse 'show databases')"
 
for db in $DBS
do
	# Bakcup file name
	FILE="${BPATH}/${db}.gz"
 
	# skip database backup if database name is adserverstats or mint
	[ "$db" == "adserverstats"  ] && continue
	[ "$db" == "mint"  ] && continue
 
	# okay lets dump a database backup 
    /usr/bin/mysqldump -u $MUSER -h $MHOST -p$MPASS $db | /bin/gzip -9 > $FILE
done