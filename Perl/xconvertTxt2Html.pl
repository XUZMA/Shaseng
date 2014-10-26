# author: xzm

#Readme:
#Step 01: change the file path;
#Step 02: change the file type;

use File::Find;
use File::Basename;

$dirHere = 'C:\\temp';

@ARGV=("$dirHere");

my $fileName;

#my $fileType = "\.html";
#my $fileType = "\.htm";
my $fileType = "\.txt";
#my $fileType = "(\.htm|\.html)";
#my $fileType = "\.html";

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

##########################################################################
#                                                                Convert .txt file into a .html file:                                                              #
#                                                                Insert <BR> at Every Line                                                                          #
##########################################################################

    my $tempFile = $dirHere."/$fileRealNameBody\.html";
    open FH1,">$tempFile" or die $!;
    select  FH1;

    print "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\n";
                ################Change the Title Below...################
    print "<HTML><HEAD><TITLE>$fileRealNameBody</TITLE></HEAD>\n";
    print "<Body>\n";

    while(<TEMPFH>){
	$strLine = $_;
	$strLine =~ s#\n$#<BR>\n#;
	print  $strLine;
    }

    print "</BODY>\n";
    print "</HTML>\n";

    $|=1;
    close FH1;

    close  TEMPFH;

}

find \&processCurrentFile, @ARGV;
