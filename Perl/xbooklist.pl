################################################################################
#                                                                                Author: XZM                                                                                             #
#                                                                                Date:   June, 22nd, 2008                                                                          #
#                                                                                Generate the Book List of Digital Library.                                              #
################################################################################

use File::Find;
use File::Basename;
use POSIX;

#$dirFrom = 'C:\\temp\\from';
#$dirHere = 'C:\\temp';

#my $dirFrom = "U:\\- Contempory Network Research";
my $dirFrom = "U:\\";
my $dirHere = "M:\\inc";

$fileType = '(\.iso|\.pdf|\.doc|\.ppt|\.chm|\.txt|\.rm|\.rmvb|\.wmv|\.mpg|\.avi|\.flv|\.swf|\.mp4)';

@ARGV=("$dirFrom");

my $fileName;
my $fileRealName;
my $fileRealPath;
my @fileNameSplit;
my $prefixStr;
my $fileDepthLevel;


sub processCurrentFile {
    $fileName = $File::Find::name;

    return 0 if $fileName =~ /\.$/;
    return 0 if $fileName =~ /RECYCLER/;
    return 0 if $fileName =~ /System Volume Information/;

    $fileRealPath = File::Basename::dirname $fileName;
    $fileRealName = File::Basename::basename $fileName;

    @fileNameSplit = split /(\/|\\)/m, $fileName;

#    print $fileName."\n";
#    print "@fileNameSplit"."\n";

    $fileDepthLevel = POSIX::floor(@fileNameSplit / 2);

#    print $fileDepthLevel."\n";

    $prefixStr = "| " x $fileDepthLevel;

    if (-d $fileName){
	$prefixStr .= "--- ";
    }else{
	$prefixStr .= " " x 8;
    }

    unless(-d $fileName){
	return 0 unless $fileName =~ /$fileType$/i;
    }
    print "$prefixStr$fileRealName\n";
}

my $tempFile = $dirHere."\\U-booklist\.txt";
open FH1,">$tempFile" or die $!;
select  FH1;

find \&processCurrentFile, @ARGV;

$|=1;
close FH1;
