# author: XZM

#my $dirFrom = "C:\\temp\\from";

#my $dirFrom = "U:\\";
#my $prefixDir = "U-";

#my $dirFrom = "V:\\";
#my $prefixDir = "V-";

#my $dirFrom = "W:\\";
#my $prefixDir = "W-";

my $dirFrom = "X:\\";
my $prefixDir = "X-";

#my $dirTo = "C:\\temp\\to";
my $dirTo = "M:\\inc";

my $dirName;
my $newDir;

opendir DH, $dirFrom || die "can't opendir $dirFrom: $!";
foreach $dirName (readdir DH){
    next unless(-d $dirFrom."\\$dirName");
    next if($dirName =~ m/^\./);
    $newDir = $dirTo."\\$prefixDir$dirName";
    print $newDir."\n";
    print $dirFrom."$dirName\n";
    mkdir $newDir, 0755 || warn "can not make $newDir: $!";
}
closedir DH;
