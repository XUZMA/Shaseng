# author: XZM

#Readme:
#Step 01: change the file path;
#Step 02: change the file type;

########################################################################
#                                                  Convert Roman Number into Arabic Number.                                                #
########################################################################
my %romanArab = (
    "I" => "01",
    "II" => "02",
    "III" => "03",
    "IV" => "04",
    "V" => "05",
    "VI" => "06",
    "VII" => "07",
    "VIII" => "08",
    "IX" => "09",
    "X" => "10",
    "XI" => "11",
    "XII" => "12",
    "XIII" => "13",
    "XIV" => "14",
    "XV" => "15",
    "XVI" => "16",
    "XVII" => "17",
    "XVIII" => "18",
    "XIX" => "19",
    "XX" => "20",
    );

########################################################################
#                                                  Convert Chinese Number into Arabic Number.                                              #
########################################################################
my %hanziArab = (
    "һ" => "01",
    "��" => "02",
    "��" => "03",
    "��" => "04",
    "��" => "05",
    "��" => "06",
    "��" => "07",
    "��" => "08",
    "��" => "09",
    "ʮ" => "10",
    "ʮһ" => "11",
    "ʮ��" => "12",
    "ʮ��" => "13",
    "ʮ��" => "14",
    "ʮ��" => "15",
    "ʮ��" => "16",
    "ʮ��" => "17",
    "ʮ��" => "18",
    "ʮ��" => "19",
    "��ʮ" => "20",
    "��ʮһ" => "21",
    "��ʮ��" => "22",
    "��ʮ��" => "23",
    "��ʮ��" => "24",
    "��ʮ��" => "25",
    "��ʮ��" => "26",
    "��ʮ��" => "27",
    "��ʮ��" => "28",
    "��ʮ��" => "29",
    "��ʮ" => "30",
    "��" => "��",
    "��" => "��",
    "��" => "��",
    "ȫ" => "ȫ",
    );

########################################################################
#                                                          Convert month name into number.                                                         #
########################################################################
my %monthNo =(
    "Jan" => '01',
    "Feb" => '02',
    "Mar" => '03',
    "Apr" => '04',
    "May" => '05',
    "June" => '06',
    "July" => '07',
    "Aug" => '08',
    "Sept" => '09',
    "Sep" => '09',
    "Oct" => '10',
    "Nov" => '11',
    "Dec" => '12',
);

########################################################################
#                                                  Convert hexidecimal number into decimal number.                                       #
########################################################################

my %hexiDeci =(
    "00" => "00",
    "01" => "01",
    "02" => "02",
    "03" => "03",
    "04" => "04",
    "05" => "05",
    "06" => "06",
    "07" => "07",
    "08" => "08",
    "09" => "09",
    "0A" => "10",
    "0B" => "11",
    "0C" => "12",
    "0D" => "13",
    "0E" => "14",
    "0F" => "15",
    "10" => "16",
    "11" => "17",
    "12" => "18",
    "13" => "19",
    "14" => "20",
    "15" => "21",
    "16" => "22",
    "17" => "23",
    "18" => "24",
    "19" => "25",
    "1A" => "26",
    "1B" => "27",
    "1C" => "28",
    "1D" => "29",
    "1E" => "30",
    "1F" => "31",
    "20" => "32",
    "21" => "33",
    "22" => "34",
    "23" => "35",
    "24" => "36",
    "25" => "37",
    "26" => "38",
    "27" => "39",
    "28" => "40",
    "29" => "41",
    "2A" => "42",
    "2B" => "43",
    "2C" => "44",
    "2D" => "45",
    "2E" => "46",
    "2F" => "47",
    "30" => "48",
    );

########################################################################
#                              Use File::Find to traverse directory and process files externally.                                       #
########################################################################
use File::Find;
use File::Basename;
use File::Copy;

#$dirHere = 'C:\zm-Transfer\������Ŀ';
#$dirHere = 'S:\inc\Drawing\����̳�';
#$dirHere = 'W:\inc\Game Theory';
#$dirHere = 'I:\transfer\������Ӱ\Amateur Photographer';
#$dirHere = 'I:\new';
#$dirHere = 'E:\��Դ����\rn';
#$dirHere = 'D:\tmp\�߼�Ӣ��д���̳�';
#$dirHere = 'D:\tmp\series';
#$dirHere = 'D:\rename';
$dirHere = 'D:\Workspace\3dsmax\װ��';

@ARGV=("$dirHere");

my $counter = "000";
#my $counter = "097";
#my $counter = "0000";

my $fileName;
my $fileNameNew;
my $dirnameCur;
my $basenameCur;

#my $fileType = "\.xhtml";
#my $fileType = "\.mht|\.html|\.htm";
#my $fileType = "\.mht";

#my $fileType = "\.zip";

#my $fileType = "\.jpg";
#my $fileType = "\.png";
#my $fileType = "\.gif";
#my $fileType = "\.bmp";

#my $fileType = "(\.rm|\.mp3)";
#my $fileType = "(\.rm|\.rar)";
#my $fileType = "(\.zip|\.rar)";
#my $fileType = "\.flv";
#my $fileType = "\.wmv";
#my $fileType = "\.mp3";
#my $fileType = "\.mpga";
#my $fileType = "\.avi";
#my $fileType = "\.mpeg";
#my $fileType = "(\.rm|\.rmvb)";
#my $fileType = "\.rm";
#my $fileType = "\.rmvb";
#my $fileType = "\.mkv";

#my $fileType = "\.doc";
#my $fileType = "\.docx";
my $fileType = "\.pdf";
#my $fileType = "\.epub";
#my $fileType = "\.djvu";
#my $fileType = "(\.pdf|\.iso)";
#my $fileType = "(\.mov|\.zip)";
#my $fileType = "\.djvu";
#my $fileType = "\.txt";
#my $fileType = "\.ppt";
#my $fileType = "(\.ppt|\.pps)";
#my $fileType = "(\.avi|\.bin)";
#my $fileType = "(\.pdf|\.djvu|\.rar)";
#my $fileType = "\.djvu|\.pdf";
#my $fileType = "(\.pdf|\.chm|\.djvu)";

sub processCurrentFile {
    $fileName = $File::Find::name;

    return 0 if $fileName =~ /\.$/;

# process file
    return 0 if -d $fileName;

# process directory
#    return 0 unless -d $fileName;

# pre-condition to the limited file types.####################################
    return 0 unless $fileName =~ /$fileType$/i;

# screen off some files whose names don't satisfy certain conditions
#    return 0 unless $fileName =~ /^0/;

    $fileNameNew = $fileName;
    $dirnameCur = File::Basename::dirname $fileNameNew;
    $basenameCur = File::Basename::basename $fileNameNew;

# Change the flv file name form Ukou.##############################################
# Rewrite the following codes with substr.******************************************************
#    $basenameCur = $hexiDeci{substr $basenameCur, 8, 2}."\.flv";

# Change the Chinese Number in file name.
# �����еڰ˼�_01.rm
#    return 0 unless $fileNameNew =~ m#/�����е�(.*)��_(.*)\.rm$#;
#    $fileNameNew =~ s#/�����е�(.*)��_(.*)\.rm$#/$hanziArab{$1} - $2\.rm#;

# Rename files with numbers 00,01,...
#    $basenameCur = "Ran Asakawa - $counter$fileType";

    $counter ++;
    print $counter."\n";
#    $basenameCur = $counter."\.$fileType";
#    $basenameCur = "PPI-".$counter."\.jpg";


# Add 0 before numbers.
#    if($fileNameNew =~ m#/\d\.txt$#i){
#	$fileNameNew =~ s#/(\d)\.txt$#/0$1.txt#i;
#    }
#    if($fileNameNew =~ m#/\d{2}\.txt$#i){
#	$fileNameNew =~ s#/(\d{2})\.txt$#/0$1.txt#i;
#    }

# Convert the suffix into lower case
#    $fileNameNew =~ s#$fileType$#\L$fileType#;

# Add category content to the file name.
#I:\languages\English\��������ϰ��֮MP3
#    $fileNameNew =~ s#([^/]*)$#��������ϰ�� - $1#;
#    $fileNameNew =~ s#([^/]*)$#Discovery - $1#;

# Insert deliminator.
#Tape1 sideA2.mp3
#$fileNameNew =~ s#Tape(\d) side(..)#Tape $1 - Side $2#;

# Convert Chinese Date into Numerical Representation.
#    $fileNameNew =~ s#��#-#;
#    $fileNameNew =~ s#-(\d)����������.*\.pdf#-0$1\.pdf#;
#    $fileNameNew =~ s#����������##;
#    $fileNameNew =~ s#([^/]*)$#TOEFL���� - �������� - $1u#;

#   $fileNameNew =~ s#����������ͳ��ְ�ݽ�([^/]*)$#0$1#;
#    $fileNameNew =~ s#-# - #g;

# Add the sub-directory name.
#    $fileNameNew =~ s#\.# #g;
#    $fileNameNew =~ s# pdf#.pdf#;

#001Model Test 1.MP3
#    $fileNameNew =~ s#/(\d{4})(\d{2})[^/]*$#/CAS GUCAS English Test - Master - $1-$2.mp3#;

# Change 1,2,3,...,9,10,11,.. into 01,...
#    $fileNameNew =~ s#\D(\d)\D# 0$1 #;

# Convert the first letter of the file name into upper case.
#    $basenameCur =~ s#^(\w)#\U$1#;

#Upper Case for the initial letter of each word.
#    $basenameCur =~ s#(_|-)# #g;
#    $basenameCur =~ s#\b(\w+)\b#\u\L$1#g;

#    $basenameCur =~ s# pdf$#.pdf#i;

# Convert the suffix to lower case in Windows
# Assuming the length of suffix is 3.
#    $basenameCur =~ s#\.# #g;
#    $basenameCur =~ s# (.{3})$#\.\L$1#;
#    $basenameCur =~ s#(\d) (\d)#$1\.$2#g;

#    $basenameCur =~ s#\b(Vol|Volume)\b#- $1#;
#    $basenameCur =~ s#\b(Issue \d+)\b#$1 -#;
#    $basenameCur =~ s# Ebook-Tlfebook##;

#    $basenameCur =~ s#��(.*)��#- $1#;
#    $basenameCur =~ s#( |-).*����##;
#    $basenameCur =~ s# - .*��##;
#    $basenameCur =~ s# ?- ?.*ר��##;
#    $basenameCur =~ s# .*���##;

#    $basenameCur =~ s#John Wiley And Sons ##;
#    $basenameCur =~ s#Marcel Dekker ##;

#    $basenameCur =~ s#^abs#\Uabs#i;
#    $basenameCur =~ s#\bdna\b#\Udna#i;
#    $basenameCur =~ s#\bcv\b#\Ucv#i;
#    $basenameCur =~ s#\bmit\b#\Umit#i;

#NB: ��һ��.pps Ҫ�ã���(.*)�Σ�������:��(.)��
#    $basenameCur =~ s#\.# #g;
#    $basenameCur =~ s# (.{3})$#\.$1#;
#    $basenameCur =~ s# eBook-LiB##;
#    $basenameCur =~ s#sas#SAS#gi;

#    $basenameCur =~ s#-1024x768\.jpg$#\.jpg#;
#    $basenameCur =~ s#^3-0##;

#    $basenameCur =~ s#^.*(\d{2})\.flv$#$hexiDeci{$1}\.flv#;

#    $basenameCur =~ s#^(\d\d\.)#$1 - #;
#    $basenameCur =~ s#\.flv$#-flv#;
#    $basenameCur =~ s#\.# #g;
#    $basenameCur =~ s#-flv#\.flv#;

#    $basenameCur =~ s#pps$#ppt#;

#    $basenameCur =~ s#��(.*)��# - $hanziArab{$1}#;

# change the words of a file name into the form that starts with upper letter.
# such as: 
# Such As.
#    $basenameCur =~ s#\[Vilppu����ָ��\]##;
#    $basenameCur =~ s#\.# #g;
#    $basenameCur =~ s#^ ##;
#    $basenameCur =~ s# bin$#\.bin#;
#    $basenameCur =~ s# avi$#\.avi#;
#    $basenameCur =~ s#(\w*)#\u\L$1#g;
#    $fileNameNew = $dirnameCur."/".$basenameCur;

#    $basenameCur =~ s#\[�������鼮]##;
#    $basenameCur =~ s#\.# #g;
#    $basenameCur =~ s#^ ##;
#    $basenameCur =~ s#(\w*)#\u\L$1#g;
#    $basenameCur =~ s# Rar$#\.rar#;
#    $basenameCur =~ s# Pdf$#\.pdf#;
#    $basenameCur =~ s# Djvu$#\.djvu#;
#    $fileNameNew = $dirnameCur."/".$basenameCur;

#    $basenameCur =~ s#^��ֽ̽����Origami\.Tanteidan\.Magazine\.##;
#    $fileNameNew = $dirnameCur."/".$basenameCur;

#    $basenameCur =~ s#\.# #g;
#    $basenameCur =~ s#^GTM(\d{3})#GTM - $1 - #;
#    $basenameCur =~ s# djvu$#.djvu#;
#    $basenameCur =~ s#\,.*\.djvu$#.djvu#;
#    $basenameCur =~ s#  # #g;
#    $basenameCur =~ s#\[##g;
#    $basenameCur =~ s#\]##g;
#    $basenameCur =~ s#\.������ɨ���##;
#    $basenameCur =~ s#\.ɨ���##;
#    $basenameCur =~ s#\.���ְ�##;
#    $basenameCur =~ s#\.��ͼ��##;

#    $basenameCur =~ s#^��ֽ̽��_ҳ��_##;

#    $basenameCur =~ s#Chap(\d)_english\.mov#Chap $1 - EN.mov#;

#    $basenameCur =~ s#^History Of The Decline And Fall Of The Roman Empire - Edward Gibbon - ##;
#    $basenameCur =~ s#^����۹�˥��ʷ - ##;

#    $basenameCur =~ s#^Aristotle Works ##;
#    $basenameCur =~ s# - Ross.*\.pdf#.pdf#;
#    $basenameCur =~ s#\[.*\]##;
#     $basenameCur =~ s#\[##;
#     $basenameCur =~ s#\]##;
#     $basenameCur =~ s#\.Ӣ�����ְ�##;
#     $basenameCur =~ s#\.���ְ�##;
#     $basenameCur =~ s#\.ɨ���##;

#     $basenameCur =~ s#\.������# - ������#;

#    $basenameCur =~ s#^\[�õ���������\]\.##;
#    $basenameCur =~ s#^\d{4}-\d{2}-\d{2}-##;
#    $basenameCur =~ s#-[^\-]*-[^\-]*\.rmvb$#.rmvb#;

#    $basenameCur =~ s#^\[�������www\.1000fr\.com\]-The\.Big\.Bang\.Theory\.##;
#    $basenameCur =~ s#\.FRTVS\.rmvb$#.rmvb#;
#    $basenameCur =~ s#S01E##;
#    $basenameCur =~ s#\.V2##;

#    $basenameCur =~ s#\[��ʡ�����������\]\.##;
#    $basenameCur =~ s#MIT\.Press\.-\.##;

#    $basenameCur =~ s#\[��ʡ��ѧԺ-�㷨����\]\.Introduction\.to\.Algorithms\.-\.##;
#    $basenameCur =~ s#\[USB�������\]\.##;

#    $basenameCur =~ s#\[�滭���������\]\[����\]\[����\]##;
#    $basenameCur =~ s#\[�滭���������\]\.##;
#    $basenameCur =~ s#\[�滭���������\]##;
#    $basenameCur =~ s#\.# #g;

#    $basenameCur =~ s#\[(.+)\..+\.��\.(.+)������\.(\d{4})\].*#$1 - $2 - $3.pdf#;
#    $basenameCur =~ s#\[(.+)\..+\.��\.(.+)������ҵ���޹�˾\.(\d{4})\].*#$1 - $2 - $3.pdf#;

#    $basenameCur =~ s#^(.+)\.\[��\].+#$1.pdf#;
#    $basenameCur =~ s#���������о���##;
#    $basenameCur =~ s#^.+��(.+)��.+#$1.pdf#;
#    $basenameCur =~ s#^����άŵ�ļ� ##;
#    $basenameCur =~ s#^����άŵ�ļ���##;
#    $basenameCur =~ s#^\[Toifferѡ��\]��-�������ա�������£�##;
#    $basenameCur =~ s#����ǣ�ȫ�뱾����(.+)��\.pdf#$hanziArab{$1}.pdf#;
#    $basenameCur =~ s#^³Ѹȫ��_##;
#    $basenameCur =~ s#^��(\d{2})��_#��$1 - #;
#    $basenameCur =~ s#\(_#(#;
#    $basenameCur =~ s#_\)#)#;
#    $basenameCur =~ s#_#-#g;
#    $basenameCur =~ s#^�����˹��##;
#    $basenameCur =~ s#^�����ļ�\.##;
#    $basenameCur =~ s#^�����ȫ��\.##;
#    $basenameCur =~ s#^��(\d)��#��0$1��#;
#    $basenameCur =~ s#^������ȫ��\.(\d)\.#$1 - #;
#    $basenameCur =~ s#^��һ��ȫ�� ##;
#    $basenameCur =~ s#^���Ǳȫ��##;
#    $basenameCur =~ s#^(\d)\.pdf#0$1.pdf#;
#    $basenameCur =~ s#^������˹ȫ�� ##;

#    $basenameCur =~ s#\.# #g;
#    $basenameCur =~ s# pdf$#.pdf#;
#    $basenameCur =~ s# chm#.chm#;
#    $basenameCur =~ s# rar$#.rar#;
#    $basenameCur =~ s# zip$#.zip#;

#    $basenameCur =~ s# rm$#.rm#;

#    $basenameCur =~ s#^�±���ķ���ź���ϵͳ��##;

#    $basenameCur =~ s#^www.dream2008.cn@�ֵ���EP##;

#    $basenameCur =~ s#^\d{2}\.##;

#    $basenameCur = '0'.$basenameCur;

#    $basenameCur =~ s###;
#    $basenameCur =~ s#\.Ӣ�İ�##;
#    $basenameCur =~ s#\.#-#g;
#    $basenameCur =~ s#-pdf$#.pdf#;
#    $basenameCur =~ s#\.# #g;
#    $basenameCur =~ s# pdf$#.pdf#;

#    $basenameCur =~ s#\(Ӣ�İ�\)# - EN#g;
#    $basenameCur =~ s#\ ���İ�# - CN#g;
#    $basenameCur =~ s# ���ְ�##g;
    $basenameCur =~ s#\.ɨ���##g;
    $basenameCur =~ s#\.ȫ�ʰ�##g;
    $basenameCur =~ s#\.�������ְ�##g;
    $basenameCur =~ s#\.ȫ��ɨ���##g;
    $basenameCur =~ s#\.��ӡ��##g;
#    $basenameCur =~ s# Ӱӡ��##g;

    $basenameCur =~ s#\[##g;
    $basenameCur =~ s#\]##g;

#    $basenameCur =~ s#\.# #g;


#    $basenameCur =~ s#��##g;
#    $basenameCur =~ s#��##g;
#    $basenameCur =~ s#^�������ѧ�������� ##g;
#    $basenameCur =~ s#^LinuxӢ��ԭ��ͼ��ϵ�� ##g;
#    $basenameCur =~ s#^�߼�Ӣ��д���̳� ##g;
#    $basenameCur =~ s#^�������� ##g;
#    $basenameCur =~ s#^�����ṩ ##g;

#    $basenameCur =~ s#^����ȫʷ��##g;
#    $basenameCur =~ s# ���ƽ ##g;

#    $basenameCur =~ s#�±���ѧ��ѧ���ⷽ��ȫ��##g;
#    $basenameCur =~ s#�±���ѧ��ѧ���ⷽ��ȫ��##g;
#    $basenameCur =~ s#Ӣ��ѧ��д����ʽ�ο����� ##g;
#    $basenameCur =~ s#���������ѧ����ƥ�˵�ƽ�漸������ڹ�ͣ�##g;


    $basenameCur =~ s# PDF#.pdf#g;
    $basenameCur =~ s# pdf#.pdf#g;
    $basenameCur =~ s# epub#.epub#g;
    $basenameCur =~ s# djvu#.djvu#g;

    $fileNameNew = $dirnameCur."/".$basenameCur;

    print $fileName,"\n";
    print $fileNameNew,"\n\n";

# delete some files
#    unlink $fileName;

# copy/move files from one directory to another directory
#    copy $fileName, 'C:\temp'."/".$basenameCur;
#    move $fileName, 'M:\inc\++U-4 - Languages\++Accient Egyptian'."/".$basenameCur;

# rename some files
#   rename $fileName, $fileNameNew unless -e $fileNameNew;

#NB: Windows is case-free for file names.
    rename $fileName, $fileNameNew;
}

find \&processCurrentFile, @ARGV;
