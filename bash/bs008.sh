#!/bin/bash

#
# examples from
# http://bash.cyberciti.biz/guide/Debug_a_script
# Debug a script

set -n # only read command but do not execute them
set -o noexec
echo "This is a test"
# no file is created as bash will only read commands but do not executes them 
>/tmp/debug.txt
