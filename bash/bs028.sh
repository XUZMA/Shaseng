#!/bin/bash

#    http://bash.cyberciti.biz/guide/Startup_scripts
#    
#    Startup scripts
#    
#    If you'd like to set the bash environment variables permanently, add your settings to the initialization file located in the home directory of your account $HOME/.bash_profile.
#    
#    Script Execution Order
#        1 - /etc/profile - It contains Linux system wide environment and startup programs. This file runs first when a user logs in to the system. This file also act as a system-wide profile file for the bash shell.
#        2 - /etc/profile.d - /etc/profile calls /etc/profile.d/. It is a directory and all scripts in this directory are called by /etc/profile using a for loop. This file runs second when a user logs in.
#        3 - ~/.bash_profile or $HOME/.bash_profile - Finally, the file ~/.bash_profile is called in the users home directory ($HOME). This file runs third when a user logs in. This file calls ~/.bashrc in the users home directory.
#    
#    Please note that each script can add or undo changes made in previously called script. For example, the PS1 variable is set in the /etc/profile, but it can be modified in the ~/.bash_profile or ~/.bashrc file.

cat .bash_profile
echo "------------------------------------------------"

cat $HOME/.bash_profile
echo "------------------------------------------------"

#cat ~/.bash_profile
cat ~/.profile