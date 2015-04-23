#!/bin/bash

#    http://bash.cyberciti.biz/guide/Why_use_pipes
#    
#    In this example, mysqldump a database backup program is used to backup a database called wiki:
#    
#    mysqldump -u root -p'passWord' wiki > /tmp/wikidb.backup
#    gzip -9 /tmp/wikidb.backup
#    scp /tmp/wikidb.backup user@secure.backupserver.com:~/mysql
#    
#        The mysqldump command is used to backup database called wiki to /tmp/wikidb.backup file.
#        The gzip command is used to compress large database file to save the disk space.
#        The scp command is used to move file to offsite backup server called secure.backupserver.com.
#        All three commands run one after the other.
#        A temporary file is created on local disk in /tmp.
#        However, using pipes you can join the standard output of mysqldump command to the standard input of gzip command without creating /tmp/wikidb.backup file:
#    
#    mysqldump -u root -p'passWord' wiki | gzip -9 > /tmp/wikidb.backup
#    scp /tmp/wikidb.backup user@secure.backupserver.com:~/mysql
#    
#        You can avoid creating a temporary file all together and run commands at the same time:
#    
#    mysqldump -u root -p'passWord' wiki | gzip -9 |  ssh user@secure.backupserver.com "cat > /home/user/mysql/wikidb.gz"
#    
#        The above syntax is compact and easy to use.
#        You just chained three programs together to complete complex task to make a remote mysql backup using pipes.
#        Filtering out data is another good reason to use pipes. 