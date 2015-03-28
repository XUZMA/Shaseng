#!/bin/bash

#    http://bash.cyberciti.biz/guide/Executes_commands_and_send_output_to_the_file_descriptor_(fd)
#    
#    Executes commands and send output to the file descriptor (fd)
#    
#    The syntax is as follows to run or execute commands and send output to the file descriptor: 
#    
#    command-name >& fd

# get date in dd-mm-yyyy format
NOW=$(date +"%d-%m-%Y")
 
# create output file name
OUTPUT="./sysinfo.$NOW.log"
 
# Assign the fd 3 to $OUTPUT file
exec 3> $OUTPUT
 
# Write date, time and hostname
echo "---------------------------------------------------"  >&3
echo "System Info run @ $(date) for $(hostname)"  >&3
echo "---------------------------------------------------"  >&3
 
echo "****************************" >&3
echo "*** Installed Hard Disks ***" >&3
echo "****************************" >&3
fdisk -l | egrep "^Disk /dev" >&3
 
echo "************************************" >&3
echo "*** File System Disk Space Usage ***"  >&3
echo "************************************" >&3
df -H >&3
 
echo "***********************" >&3
echo "*** CPU Information ***"  >&3
echo "***********************" >&3
grep 'model name' /proc/cpuinfo  | uniq | awk -F: '{ print $2}' >&3
 
echo "*****************************" >&3
echo "*** Operating System Info ***"  >&3
echo "*****************************" >&3
uname -a >&3
[ -x /usr/bin/lsb_release ] && /usr/bin/lsb_release -a  >&3 || echo "/usr/bin/lsb_release not found." >&3
 
echo "**************************************" >&3
echo "*** Amount Of Free And Used Memory ***"  >&3
echo "**************************************" >&3
free -m >&3
 
echo "************************************" >&3
echo "*** Top 10 Memory Eating Process ***"  >&3
echo "************************************" >&3
ps -auxf | sort -nr -k 4 | head -10 >&3
 
echo "**********************************" >&3
echo "*** Top 10 CPU Eating Process  ***"  >&3
echo "**********************************" >&3
ps -auxf | sort -nr -k 3 | head -10 >&3
 
echo "******************************************" >&3
echo "*** Network Device Information [eth0]  ***"  >&3
echo "******************************************" >&3
netstat -i | grep -q eth0 && /sbin/ifconfig eth0 >&3 || echo "eth0 is not installed" >&3
 
echo "******************************************" >&3
echo "*** Network Device Information [eth1]  ***"  >&3
echo "******************************************" >&3
netstat -i | grep -q eth1 && /sbin/ifconfig eth1 >&3 || echo "eth1 is not installed" >&3
 
echo "********************************" >&3
echo "*** Wireless Device [wlan0]  ***"  >&3
echo "********************************" >&3
netstat -i | grep -q wlan0 && /sbin/ifconfig wlan0 >&3 || echo "wlan0 is not installed" >&3
 
echo "*************************************" >&3
echo "*** All Network Interfaces Stats ***" >&3
echo "*************************************" >&3
netstat -i >&3
echo "System info wrote to $OUTPUT file."