#!/bin/bash


#
# examples from
# http://bash.cyberciti.biz/guide/Export_Variables
# Export Variables
#
# The export builtin automatically exports to the environment of child processes.
# 


export backup="/nas10/mysql"
echo "Backup dir $backup"
bash
echo "Backup dir $backup"