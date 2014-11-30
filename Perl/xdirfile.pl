################################################################################
#                Auther: Zeming Xu                                             #
#                Date:   Nev, 30th, 2014                                       #
#                Functionality: list all the files and sub-directories         #
#
#Here is the complete list of features that you can check:
#Operator
#Description
#-A
#Age of file (at script startup) in days since modification.
#-B
#Is it a binary file?
#-C
#Age of file (at script startup) in days since modification.
#-M
#Age of file (at script startup) in days since modification.
#-O
#Is the file owned by the real user ID?
#-R
#Is the file readable by the real user ID or real group?
#-S
#Is the file a socket?
#-T
#Is it a text file?
#-W
#Is the file writable by the real user ID or real group?
#-X
#Is the file executable by the real user ID or real group?
#-b
#Is it a block special file?
#-c
#Is it a character special file?
#-d
#Is the file a directory?
#-e
#Does the file exist?
#-f
#Is it a plain file?
#-g
#Does the file have the setgid bit set?
#-k
#Does the file have the sticky bit set?
#-l
#Is the file a symbolic link?
#-o
#Is the file owned by the effective user ID?
#-p
#Is the file a named pipe?
#-r
#Is the file readable by the effective user or group ID?
#-s
#Returns the size of the file, zero size = empty file.
#-t
#Is the filehandle opened by a TTY (terminal)?
#-u
#Does the file have the setuid bit set?
#-w
#Is the file writable by the effective user or group ID?
#-x
#Is the file executable by the effective user or group ID?
#-z
#Is the file size zero?
#
################################################################################

my $dir = "D:\\mg1128\\mobile_game\\src\\engine\\player";

opendir DH, $dir or die "can open $dir";

foreach $fileName(readdir DH){

    if(-d $fileName){
	print "$fileName\n\n";
    }else{
        print "*$fileName\n";
        print "Module summary:\n\n";

    }
}

closedir DH;

