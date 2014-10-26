#author: xzm
#xinnerFileProcess.pl is used to process some files' content.

#Readme:
#Step 01: change the file path;
#Step 02: change the file type;

use File::Find;
use File::Basename;

#$dirHere = 'C:\\temp';
$dirHere = 'C:\Documents and Settings\xzm\My Documents\xzmchmworkspace\Origin 7.0简明用法';

@ARGV=("$dirHere");

my $fileName;

#my $fileType = "\.html";
my $fileType = "\.htm";
#my $fileType = "\.txt";
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

#####################################################################
#                                         Delete the Hyperlink or other special tags;                                                       #
#                                        Alter the content of special tag, such as <title>;                                                #
#####################################################################

    my ($dev,$ino,$mode,$nlink,$uid,$gid,$rdev,$size,
	$atime,$mtime,$ctime,$blksize,$blocks)
	=stat($fileName);

#    print $fileName."\n";
#    print $size."\n";

    my $fileBuffer;
    read TEMPFH, $fileBuffer, $size;

################################****************################################

#################    Remove <A ...> and </A>    ################

#EXAMPLE:
#<A                                                                                                                                        #
#      href="file:///browse/Listwriter.asp?vwriter=&sup3;&otilde;&Ouml;&ETH;&sup2;&icirc;&Eacute;ú&amp;idwriter=0&amp;key=0"               #
#      target=_blank>ABC</A>                                                                                                               #

#    $fileBuffer =~ s#<A.*?>##gms;
#    $fileBuffer =~ s#<a.*?>##gms;
#    $fileBuffer =~ s#</A>##g;
#    $fileBuffer =~ s#</a>##g;

#    $fileBuffer =~ s#历届美国总统就职演讲#0#g;
#    $fileBuffer =~ s<htl#><html#>g;

#################    Remove <script ... </script>    ################
#    $fileBuffer =~ s#<script.*?</script>##sig;

################    Change the content of <title> into the real name body.    ################

#EXAMPLE:
#<title>CTerm非常精华下载</title>

#    $fileBuffer =~ s#<title>.*?</title>#<title>$fileRealNameBody</title>#im;

################    Remove special contents.                ################
#EXAMPLE
#<p align="center"><a href="http://cterm.163.net">欢迎访问Cterm主页</a></p>
#<a href="http://cterm.163.net"><img src="banner.gif" width="400" height="60" alt="banner.gif"border="0"></a>
#<a href="http://166.111.8.238"><font face="黑体"><big><big>smth</big></big></font></a>
#<a href="1.htm">回到开始</a>
#<a href="2.htm">

#    $fileBuffer =~ s#<p align="center"><a href="http://cterm.163.net">欢迎访问Cterm主页</a></p>##g!;
#    $fileBuffer =~ s#<a href="http://cterm.163.net">(.*?)</a>#$1#;
#    $fileBuffer =~ s#<a href="http://166.111.8.238">.*?</a>##;
#    $fileBuffer =~ s#<a href=\"(\d)\.htm\">#<a href=\"0$1\.htm\">#ig;
#    $fileBuffer =~ s#<a href=\"28\.htm\">.*?</a>##si;

#EXAMPLE
#<BODY BACKGROUND="../../health/culture/gest-novels/gu-long/bg1.jpg" NOSAVE tppabs="http://www.iii-net.com/person/lichun/novel/jinyong/shu/bg14.jpg">
#<BODY background="bg12.gif" tppabs="http://www.iii-net.com/person/lichun/novel/jinyong/shu/bg12.gif" TEXT="#000011">
#<a href="mailto:73467.3716@compuserve.com">Graham Earnshaw</a>

#    $fileBuffer =~ s(<body.*?>)[<BODY>]sim;
#    $fileBuffer =~ s#<a href="mailto.*?>(.*)</a#$1#gsim;
 
#    select STDOUT;
#    print "$fileName\n";# if  $fileBuffer =~ m(<BODY.*?>);

#<script language="JAVASCRIPT">...... //-->
#    $fileBuffer =~ s#<script language="JAVASCRIPT">.*?//-->##sim;

#    $fileBuffer =~ s#xhtml#html#gim;
    $fileBuffer =~ s#<!--李会民 HM_Li@ustc.edu--!>##gim;

################################****************################################

    my $tempFile = $fileRealPath."tmpXXX";
    open FH1,">$tempFile" or die $!;
    select  FH1;
    print  $fileBuffer;
    $|=1;
    close FH1;


####################################################################################

    close  TEMPFH;

    unlink $fileName;
    rename $tempFile, $fileName;

}

find \&processCurrentFile, @ARGV;
