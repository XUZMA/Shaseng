############################################
#         Author:  XZM                                                                          #
#         Date: June 22nd, 2008                                                           #
#         Functionality:                                                                         #
#                    The library is organized as directory trees.             #
#                    The depth of the directories is at most 2.                #
#                    Create Directory Tree                                                 #
#                    The directory depth is 2.                                            #
############################################

#my $dirFrom = "C:\\temp\\from";
#my $dirTo = "C:\\temp\\to";

#my $dirFrom = "U:\\";
my $dirFrom = "Q:\\";

my $prefixDir = "U-";

#my $dirFrom = "V:\\";
#my $prefixDir = "V-";

#my $dirFrom = "W:\\";
#my $prefixDir = "W-";

#my $dirFrom = "X:\\";
#my $prefixDir = "X-";

#my $dirTo = "M:\\inc";
my $dirTo = "I:\\inc";

my ($dirName1, $dirName2);
my ($dirPath1, $dirPath2);
my ($dirPathNew1, $dirPathNew2);

opendir DH, $dirFrom or die "can't opendir $dirFrom: $!";
foreach $dirName1 (readdir DH){

   next if ($dirName1 eq "RECYCLER");
   next if ($dirName1 eq "System Volume Information");

   $dirPath1 = $dirFrom."\\$dirName1";
   next unless(-d $dirPath1);
   next if($dirName1 =~ m/\.$/);
#   print $dirPath1."\n";

   $dirPathNew1 = $dirTo."\\$prefixDir$dirName1";
#   print $dirPathNew1."\n";
   mkdir $dirPathNew1, 0755 or warn "can not make $dirPathNew1: $!";

   opendir DH2, $dirPath1 or die "can't opendir $dirFrom: $!";
   foreach $dirName2 (readdir DH2){
       $dirPath2 = $dirPath1."\\$dirName2";
       next unless(-d $dirPath2);
       next if($dirName2 =~ m/\.$/);
 #      print $dirPath2."\n";

       $dirPathNew2 = $dirPathNew1."\\$dirName2";
#       print $dirPathNew2."\n";
       mkdir $dirPathNew2, 0755 or warn "can not make $dirPathNew2: $!";
   }
   closedir DH2;

}
closedir DH;
