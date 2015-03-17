#!/bin/bash

#    http://bash.cyberciti.biz/guide/Redirection_of_both_standard_error_and_output
#    Redirection of both standard error and output
#    
#    You can redirect both stdout and stderr to file using the following syntax:
#    
#        command-name &>filename
#        command-name >cmd.log 2>&1
#        command-name >/dev/null 2>&1
#    
#    This syntax is often used with cron jobs:
#    
#    @hourly /scripts/backup/nas.backup >/dev/null 2>&1
#        OR
#    @hourly /scripts/backup/nas.backup &>/dev/null

find /home -name .profile  >cmd.log 2>./error
