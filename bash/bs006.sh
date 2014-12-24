#!/bin/bash -x

#
# examples from
# http://bash.cyberciti.biz/guide/Setting_up_permissions_on_a_script
#
# Allowing everyone to execute the script, enter:
#chmod +x script.sh
# OR
# chmod 0755 script.sh
# Only allow owner to execute the script, enter:
# chmod 0700 script.sh
# OR
# chmod u=rwx,go= script.sh
# OR
# chmod u+x script.sh
# To view the permissions, use:
# ls -l script.sh
# Set the permissions for the user and the group to read and execute only (no write permission), enter:
# chmod ug=rx script.sh
# Remove read and execute permission for the group and user, enter:
# chmod ug= script.sh
#
# http://bash.cyberciti.biz/guide/Execute_a_script
# A shell script can be executed using the following syntax:
# chmod +x script.sh
# ./script.sh
# You can also run the script directly as follows without setting the script execute permission:
# bash script.sh
# . script.sh
# In last example, you are using . (dot) command (a.k.a., source) which reads and executes commands from filename in the current shell. If filename does not contain a slash, directory names in PATH are used to find the directory containing filename.
# When a script is executed using either the bash command or the dot (.) command, you do not have to set executable permissions on script but read permissions need to be set.
#
# http://bash.cyberciti.biz/guide/Debug_a_script
# You need to run a shell script with -x option from the command line itself:
# bash -x script-name
# OR
# bash -xv script-name
#
# You can also modify shebang line to run an entire script in debugging mode:
#
# Bash shell offers debugging options which can be turned on or off using set command.
# set -x : Display commands and their arguments as they are executed.
# set -v : Display shell input lines as they are read.
# set -n : Read commands but do not execute them. This may be used to check a shell script for syntax errors.

# Debug a script

echo "Hello ${LOGNAME}"
echo "Today is $(date)"
echo "Users currently on the machine, and their processes:"
w
