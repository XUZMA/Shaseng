#!/bin/bash

#
# examples from
# http://bash.cyberciti.biz/guide/Variables
# System Variables

# BASH_VERSION	Holds the version of this instance of bash.
echo $BASH_VERSION

# HOSTNAME	The name of the your computer.	
echo $HOSTNAME

# CDPATH	The search path for the cd command.
echo $CDPATH

# HISTFILE	The name of the file in which command history is saved.
echo $HISTFILE

# HISTFILESIZE	The maximum number of lines contained in the history file.
echo $HISTFILESIZE

# HISTSIZE	The number of commands to remember in the command history. The default value is 500. 
echo $HISTSIZE

# HOME	The home directory of the current user.
echo $HOME

# IFS The Internal Field Separator that is used for word splitting after expansion and to split lines into words with the read builtin command. 
#       The default value is <space><tab><newline>.  
echo $IFS

# LANG Used to determine the locale category for any category not specifically selected with a variable starting with LC_. 
echo $LANG

# PATH	The search path for commands. It is a colon-separated list of directories in which the shell looks for commands.	
echo $PATH

# PS1	Your prompt settings. 
echo $PS1

# TMOUT	The default timeout for the read builtin command. 
#        Also in an interactive shell, the value is interpreted as the number of seconds to wait for input after issuing the command. 
#        If not input provided it will logout user. 
echo $TMOUT

# TERM	Your login terminal type. 
echo $TERM
# export TERM=vt100

# SHELL	Set path to login shell.	
echo $SHELL

# DISPLAY	Set X display name	
echo $DISPLAY
# export DISPLAY=:0.1

# EDITOR	Set name of default text editor.	
# export EDITOR=/usr/bin/vim
