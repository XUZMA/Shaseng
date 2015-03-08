#!/bin/bash

#    http://bash.cyberciti.biz/guide/Empty_file_creation
#
#    Empty file creation
#
#    To create empty file use the following syntax:
#    >newfile.name
#    > operator redirects output to a file.
#    If no command given and if file doesn't exist it will create empty file. 
#
#    Notice you can also use touch command for empty file creation:
#    touch /tmp/newtextfile

#!/bin/bash
#TAR=/bin/tar
 
# SCSI tape device
#TAPE=/dev/st0
 
# Backup dir names
#BDIRS="/www /home /etc /usr/local/mailboxes /phpjail /pythonjail /perlcgibin"
 
# Logfile name
#ERRLOG=/tmp/tar.logfile.txt
ERRLOG=./err.logfile.txt
 
# Remove old log file and create the empty log file
>$ERRLOG
 
# Okay lets make a backup
#$TAR -cvf $TAPE $BDIRS 2>$ERRLOG
errCmd 2>$ERRLOG