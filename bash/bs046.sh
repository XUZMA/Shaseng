#!/bin/bash

#    http://bash.cyberciti.biz/guide/File_attributes_comparisons
#    File attributes comparisons
#    Use the following file comparisons to test various file attributes. You can use the test command or conditional expression using [.
#    
#    -a file
#    True if file exists.
#    
#    -b file
#    True if file exists and is a block special file.
#    
#    -c file
#    True if file exists and is a character special file.
#    
#    -d dir
#    True if file exists and is a directory.
#    
#    -e file
#    True if file exists.
#    
#    -f file
#    True if file exists and is a regular file.
#    
#    -g file
#    True if file exists and is set-group-id.
#    
#    -h file
#    True if file exists and is a symbolic link.
#    
#    -k file
#    True if file exists and its 'sticky' bit is set.
#    
#    -p file
#    True if file exists and is a named pipe (FIFO).
#    
#    -r file
#    True if file exists and is readable.
#    
#    -s file
#    True if file exists and has a size greater than zero.
#    
#    -t fd
#    True if file descriptor fd is open and refers to a terminal.
#    
#    -u file
#    True if file exists and its set-user-id bit is set.
#    
#    -w file
#    True if file exists and is writable.
#    
#    -x file
#    True if file exists and is executable.
#    
#    -O file
#    True if file exists and is owned by the effective user id.
#    
#    -G file
#    True if file exists and is owned by the effective group id.
#    
#    -L file
#    True if file exists and is a symbolic link.
#    
#    -S file
#    True if file exists and is a socket.
#    
#    -N file
#    True if file exists and has been modified since it was last read.

[ -a /etc/resolv.conf ] && echo "File found" || echo "Not found"

[ -b /dev/zero ] && echo "block special file found" || echo "block special file not found"

[ -b /dev/sda ] && echo "block special file found" || echo "block special file not found"

[ -c /dev/tty0  ] && echo "Character special file found." || echo "Character special file not found."

[ -e /tmp/test.txt ] && echo "File found" || echo "File not found"

[ ! -f /path/to/file ] && echo "File not found!"

