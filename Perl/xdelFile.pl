# author: XZM
# xdelFile.pl is used to delete file according to certain condition.

use File::Find;
use File::Basename;

$dirHere = 'C:\I386';

@ARGV=("$dirHere");

my $fileName;
my $fileType = "(\.htm|\.html)";

sub processCurrentFile {
    $fileName = $File::Find::name;
 
    print $fileName."\n";
    unlink $fileName;
}

find \&processCurrentFile, @ARGV;
