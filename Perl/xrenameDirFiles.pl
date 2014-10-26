# author: XZM

######################################################################
#                                        Use readdir to process the files of the top level only.                                         #
######################################################################

my $dirStart = 'C:\Lecture 11\Qt-Embedded±‡≥Ã µ’Ω\ppt';

opendir DIR, $dirStart;
my @files = readdir DIR;
closedir DIR;

my $fileName;
my $fileNameNew;

foreach(@files){
    next if $_ =~ /\.$/;
    $fileName = $_;
    $fileNameNew = $_;

    $fileNameNew =~ s#\.(\d)-#\.0$1 - #;

    $fileName = $dirStart."/$fileName";
    $fileNameNew = $dirStart."/$fileNameNew";

    print $fileName,"\n";
    print $fileNameNew,"\n\n";

    rename $fileName, $fileNameNew;
}


