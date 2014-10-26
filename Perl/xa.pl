#author: xzm
#date: 2012-03-01

#xa: xdateFileName

#Usage:
#perl xdfn 2012年03月01日 09:14

#Function:
#convert
#2012年03月01日 09:14
#the above line is the perl command line parameter list
#to
#2012-03-01-09-14 - 

my $sec,  $min,  $hour, $mday, $mon, $year, $wday, $yday, $isdst;
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=localtime();
$year=$year+1900;
$mon=$mon+1;
printf "%04d-%02d-%02d-%02d-%02d-%02d - \n",$year, $mon, $mday, $hour, $min, $sec;

my $line = <STDIN>;
chomp($line);
if($line =~ /(\d+)\D*(\d+)\D*(\d+)\D*(\d+)\D*(\d+)\D*(\d+)\D*/){
    print $1.'-'.$2.'-'.$3.'-'.$4.'-'.$5.'-'.$6.' - '."\n";
}
if($line =~ /(\d{4})\D*(\d{2})\D*(\d{2})\D*(\d{2})\D*(\d{2})\D*/){
    print $1.'-'.$2.'-'.$3.'-'.$4.'-'.$5.' - '. "\n";
}
if($line =~ /(\d+)\D*(\d+)\D*(\d+)\D*/){
    print $1.'-'.$2.'-'.$3.' - ' . "\n";
}
if($line =~ /(\d+)\D*(\d+)\D*(\d+)\D*(\d+)\D*(\d+)\D*/){
    print $1.'-'.$2.'-'.$3.'-'.$4.'-'.$5.' - '."\n";
}


