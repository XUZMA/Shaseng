#!/bin/bash

#    http://bash.cyberciti.biz/guide/Create_and_use_aliases
#    
#    Create and use aliases
#    An alias is nothing but shortcut to commands.
#    Use alias command to display list of all defined aliases.
#    Add user defined aliases to ~/.bashrc file.
#    
#    Create and use aliases
#    Use the following syntax:
#    
#    alias name='command'
#    alias name='command arg1 arg2'
#    
#    Examples
#    Create an aliase called c to clear the terminal screen, enter:
#    alias c='clear'
#    
#    Aliases are created and listed with the alias command, and removed with the unalias command. The syntax is:
#    unalias alias-name
#    unalias c 
#    unalias c d
#    
#    To list currently defined aliases, enter:
#    alias
#    
#    How do I permanently add aliases to my session?
#    If you want to add aliases for every user, place them either in /etc/bashrc or /etc/profile.d/useralias.sh file. 
#    Please note that you need to create /etc/profile.d/useralias.sh file.
#    User specific alias must be placed in ~/.bashrc ($HOME/.bashrc) file.
#    
#    Example ~/.bashrc script:
#    # make sure bc start with standard math library
#    alias bc='bc -l'
#    # protect cp, mv, rm command with confirmation
#    alias cp='cp -i'
#    alias mv='mv -i'
#    alias rm='rm -i'
#     
#    # Make sure dnstop only shows eth1 stats
#    alias dnstop='dnstop -l 5  eth1'
#     
#    # Make grep pretty 
#    alias grep='grep --color'
#     
#    # ls command shortcuts 
#    alias l.='ls -d .* --color=tty'
#    alias ll='ls -l --color=tty'
#    alias ls='ls --color=tty'
#     
#    # Centos/RHEL server update 
#    alias update='yum update'
#    alias updatey='yum -y update'
#    # vi is vim 
#    alias vi='vim'
#     
#    # Make sure vnstat use eth1 by default 
#    alias vnstat='vnstat -i eth1'

alias
