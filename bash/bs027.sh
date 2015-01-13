#!/bin/bash

#    http://bash.cyberciti.biz/guide/The_tilde_expansion
#    
#    The tilde expansion
#    
#    The tilde (~) may be used to refer your own home directory or other users home directory.
#    
#    Display your home directory file listing:
#    ls ~
#    
#    Display a file called .bashrc stored in your home directory:
#    
#    ls ~/.bashrc
#    cat ~/.bashrc
#    If the tilde-prefix is a ~+, the value of the shell variable PWD replaces the tilde-prefix.
#    pwd
#    ls ~+
#    If the tilde-prefix is a ~-, the value of the shell variable OLDPWD, if it is set, is substituted.
#    cd /etc
#    pwd
#    cd /bin
#    pwd
#    echo $OLDPWD
#    # display /etc/ directory listing and not /bin

ls ~