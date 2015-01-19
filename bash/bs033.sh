#!/bin/bash

# http://bash.cyberciti.biz/guide/Bash_structured_language_constructs
# Bash structured language constructs

if [ -f /etc/profile ]
then
    cat /etc/profile
else
    echo "file not exist - /etc/profile"
fi