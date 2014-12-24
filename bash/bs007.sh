#!/bin/bash

#
# examples from
# http://bash.cyberciti.biz/guide/Debug_a_script
# Debug a script

### Turn on debug mode ###
set -x
 
# Run shell commands
echo "Hello $(LOGNAME)"
echo "Today is $(date)"
echo "Users currently on the machine, and their processes:"
 
### Turn OFF debug mode ###
set +x
 
# Add more commands without debug mode
