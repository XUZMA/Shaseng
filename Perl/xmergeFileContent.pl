# author: XZM

#Readme:
#merge a series of files '*.txt' into a single '*.file'
#1.txt
#the content of 1.txt
#------------------------------------------------------------------------------------------------
#2.txt
#the content of 2.txt
#------------------------------------------------------------------------------------------------
#......

#Step 01: change the file path;
#Step 02: change the file type;

use File::Find;
use File::Basename;

$dirHere = "E:\\0-xunlei\\tmp\\illustration";

@ARGV=("$dirHere");

my $fileName;

my $counter = 0;

my $fileType = "\.txt";

my $tempFile = "E:\\0-xunlei\\tmp\\merge.txt";
open FH1,">$tempFile" or die $!;

sub processCurrentFile {
    $fileName = $File::Find::name;
    return 0 if -d $fileName;
    return 0 if $fileName =~ /\.$/;
    return 0 unless $fileName =~ /$fileType$/i;

    my $fileRealName;
    my $fileRealPath;

    $fileRealPath = File::Basename::dirname $fileName;
    $fileRealName = File::Basename::basename $fileName;

    my $fileRealNameBody = $fileRealName;
    $fileRealNameBody =~ s#^([^.]*).*$#$1#;

    open TEMPFH, $fileName or die $!;

    select  FH1;

    $counter = $counter + 1;
    print $counter;
    print "    ";
    print "$fileRealNameBody\n";

    while(<TEMPFH>){
	$strLine = $_;
	print  $strLine;
    }

    print "\n";
    print "\n";
    print "------------------------------------------------------------------------------------------------";
    print "\n";

    $|=1;

    close  TEMPFH;

}

find \&processCurrentFile, @ARGV;

close FH1;
