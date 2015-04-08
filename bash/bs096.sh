#!/bin/bash

#    http://bash.cyberciti.biz/guide/Putting_jobs_in_background

#    How do I put commands in background?
#    
#    The syntax is as follows for putting jobs in background:
#    
#    command &
#    command arg1 arg2 &
#    command1 | command2 arg1 &
#    command1 | command2 arg1 > output &
#    
#        The & operator puts command in the background and free up your terminal.
#        The command which runs in background is called a job.
#        You can type other command while background command is running.

find /lib/modules -name "*.dep" > /filelist.txt &