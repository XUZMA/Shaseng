#!/bin/bash

#
# examples from
#   http://bash.cyberciti.biz/guide/Customize_the_bash_shell_environments
#
# Customize the bash shell environments
#
# Strictly speaking there are two types of shell variables:
#   Local variables (shell variable) - Used by shell and or user scripts. All user created variables are local unless exported using the export command.
#   Environment variables - Used by shell or user but they are also passed onto other command. Environment variables are passed to subprocesses or subshells.
#
# Use the set built-in command to view all variables:
#   set
#
# Usually, all upper-case variables are set by bash.
# For a complete list of variables set by shell, read the man page for bash by typing the following command:
#   man bash
#
# Use the env command to view all environment variables:
#   env
#
# Common Environment Variables
#   HOME - Your home directory path.
#   PATH - Set your executable search path.
#   PWD - Your current working directory.
#
# The whatis command is used display a short description about command. whatis command searches the manual page names and displays the manual page descriptions for a command:
# 
#   whatis command-name
#   whatis date
#   whatis ifconfig
#   whatis ping

set

echo "------------------------------------------------"

env

echo "------------------------------------------------"

echo $HOME
echo $PATH
echo $PWD

whatis date