#! /bin/bash
#
# examples from
# http://bash.cyberciti.biz/guide/Shell_Comments

# A Simple Shell Script To Get Linux Network Information

echo "Current date : $(date) @ $(hostname)"
echo "Network configuration"
/sbin/ifconfig

echo "Adding new users to LDAP Server..."
<<COMMENT1
    Master LDAP server : dir1.nixcraft.net.in 
    Add user to master and it will get sync to backup server too
    Profile and active directory hooks are below
COMMENT1
echo "Searching for user..."
