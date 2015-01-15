#!/bin/bash

#    http://bash.cyberciti.biz/guide/Using_aliases
#    
#    Using aliases
#    Task: Customize your bash shell environment by creating alias as follows:
#    
#    Alias	 The system will run...
#    c	 Clear the screen
#    update	 Update and install the newest versions of all packages currently installed on the Debian system.
#    ports	 Lists all listening TCP/UDP ports with the PID of the associated process.
#    vi	 Run vim text editor instead of old vi.
#    
#    Edit ~/.bashrc file:
#    vi  ~/.bashrc
#    
#    Append the following aliases:
#    alias c='clear'
#    alias update='apt-get update && apt-get upgrade'
#    alias ports='netstat -tulpn'
#    alias vi='vim'
#    Save and close the file. Test your changed by doing logout and login back operation. Or simply type the following:
#    . ~/bashrc
#    OR
#    bash
#    
#    To list all your aliases, enter:
#    alias

alias