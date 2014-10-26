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
    "一" => "01",
    "二" => "02",
    "三" => "03",
    "四" => "04",
    "五" => "05",
    "六" => "06",
    "七" => "07",
    "八" => "08",
    "九" => "09",
    "十" => "10",
    "十一" => "11",
    "十二" => "12",
    "十三" => "13",
    "十四" => "14",
    "十五" => "15",
    "十六" => "16",
    "十七" => "17",
    "十八" => "18",
    "十九" => "19",
    "二十" => "20",
    "二十一" => "21",
    "二十二" => "22",
    "二十三" => "23",
    "二十四" => "24",
    "二十五" => "25",
    "二十六" => "26",
    "二十七" => "27",
    "二十八" => "28",
    "二十九" => "29",
    "三十" => "30",
    "上" => "上",
    "中" => "中",
    "下" => "下",
    "全" => "全",
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

#$dirHere = 'C:\zm-Transfer\随身书目';
#$dirHere = 'S:\inc\Drawing\素描教程';
#$dirHere = 'W:\inc\Game Theory';
#$dirHere = 'I:\transfer\数码摄影\Amateur Photographer';
#$dirHere = 'I:\new';
#$dirHere = 'E:\资源中心\rn';
#$dirHere = 'D:\tmp\高级英语写作教程';
#$dirHere = 'D:\tmp\series';
#$dirHere = 'D:\rename';
$dirHere = 'D:\Workspace\3dsmax\装修';

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
# 六人行第八季_01.rm
#    return 0 unless $fileNameNew =~ m#/六人行第(.*)季_(.*)\.rm$#;
#    $fileNameNew =~ s#/六人行第(.*)季_(.*)\.rm$#/$hanziArab{$1} - $2\.rm#;

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
#I:\languages\English\许杨听力习语之MP3
#    $fileNameNew =~ s#([^/]*)$#许杨听力习语 - $1#;
#    $fileNameNew =~ s#([^/]*)$#Discovery - $1#;

# Insert deliminator.
#Tape1 sideA2.mp3
#$fileNameNew =~ s#Tape(\d) side(..)#Tape $1 - Side $2#;

# Convert Chinese Date into Numerical Representation.
#    $fileNameNew =~ s#年#-#;
#    $fileNameNew =~ s#-(\d)月听力文字.*\.pdf#-0$1\.pdf#;
#    $fileNameNew =~ s#月听力文字##;
#    $fileNameNew =~ s#([^/]*)$#TOEFL真题 - 听力文字 - $1u#;

#   $fileNameNew =~ s#历届美国总统就职演讲([^/]*)$#0$1#;
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

#    $basenameCur =~ s#（(.*)）#- $1#;
#    $basenameCur =~ s#( |-).*丛书##;
#    $basenameCur =~ s# - .*丛##;
#    $basenameCur =~ s# ?- ?.*专著##;
#    $basenameCur =~ s# .*大库##;

#    $basenameCur =~ s#John Wiley And Sons ##;
#    $basenameCur =~ s#Marcel Dekker ##;

#    $basenameCur =~ s#^abs#\Uabs#i;
#    $basenameCur =~ s#\bdna\b#\Udna#i;
#    $basenameCur =~ s#\bcv\b#\Ucv#i;
#    $basenameCur =~ s#\bmit\b#\Umit#i;

#NB: 第一课.pps 要用：第(.*)课，不能用:第(.)课
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

#    $basenameCur =~ s#（(.*)）# - $hanziArab{$1}#;

# change the words of a file name into the form that starts with upper letter.
# such as: 
# Such As.
#    $basenameCur =~ s#\[Vilppu素描指南\]##;
#    $basenameCur =~ s#\.# #g;
#    $basenameCur =~ s#^ ##;
#    $basenameCur =~ s# bin$#\.bin#;
#    $basenameCur =~ s# avi$#\.avi#;
#    $basenameCur =~ s#(\w*)#\u\L$1#g;
#    $fileNameNew = $dirnameCur."/".$basenameCur;

#    $basenameCur =~ s#\[博弈论书籍]##;
#    $basenameCur =~ s#\.# #g;
#    $basenameCur =~ s#^ ##;
#    $basenameCur =~ s#(\w*)#\u\L$1#g;
#    $basenameCur =~ s# Rar$#\.rar#;
#    $basenameCur =~ s# Pdf$#\.pdf#;
#    $basenameCur =~ s# Djvu$#\.djvu#;
#    $fileNameNew = $dirnameCur."/".$basenameCur;

#    $basenameCur =~ s#^折纸探侦团Origami\.Tanteidan\.Magazine\.##;
#    $fileNameNew = $dirnameCur."/".$basenameCur;

#    $basenameCur =~ s#\.# #g;
#    $basenameCur =~ s#^GTM(\d{3})#GTM - $1 - #;
#    $basenameCur =~ s# djvu$#.djvu#;
#    $basenameCur =~ s#\,.*\.djvu$#.djvu#;
#    $basenameCur =~ s#  # #g;
#    $basenameCur =~ s#\[##g;
#    $basenameCur =~ s#\]##g;
#    $basenameCur =~ s#\.高清晰扫描版##;
#    $basenameCur =~ s#\.扫描版##;
#    $basenameCur =~ s#\.文字版##;
#    $basenameCur =~ s#\.插图版##;

#    $basenameCur =~ s#^折纸探侦_页面_##;

#    $basenameCur =~ s#Chap(\d)_english\.mov#Chap $1 - EN.mov#;

#    $basenameCur =~ s#^History Of The Decline And Fall Of The Roman Empire - Edward Gibbon - ##;
#    $basenameCur =~ s#^罗马帝国衰亡史 - ##;

#    $basenameCur =~ s#^Aristotle Works ##;
#    $basenameCur =~ s# - Ross.*\.pdf#.pdf#;
#    $basenameCur =~ s#\[.*\]##;
#     $basenameCur =~ s#\[##;
#     $basenameCur =~ s#\]##;
#     $basenameCur =~ s#\.英文文字版##;
#     $basenameCur =~ s#\.文字版##;
#     $basenameCur =~ s#\.扫描版##;

#     $basenameCur =~ s#\.周淑玲# - 周淑玲#;

#    $basenameCur =~ s#^\[用点心做点心\]\.##;
#    $basenameCur =~ s#^\d{4}-\d{2}-\d{2}-##;
#    $basenameCur =~ s#-[^\-]*-[^\-]*\.rmvb$#.rmvb#;

#    $basenameCur =~ s#^\[謦灵风软www\.1000fr\.com\]-The\.Big\.Bang\.Theory\.##;
#    $basenameCur =~ s#\.FRTVS\.rmvb$#.rmvb#;
#    $basenameCur =~ s#S01E##;
#    $basenameCur =~ s#\.V2##;

#    $basenameCur =~ s#\[麻省理工出版社丛书\]\.##;
#    $basenameCur =~ s#MIT\.Press\.-\.##;

#    $basenameCur =~ s#\[麻省理工学院-算法导论\]\.Introduction\.to\.Algorithms\.-\.##;
#    $basenameCur =~ s#\[USB相关资料\]\.##;

#    $basenameCur =~ s#\[绘画方面的资料\]\[画画\]\[美术\]##;
#    $basenameCur =~ s#\[绘画方面的资料\]\.##;
#    $basenameCur =~ s#\[绘画方面的资料\]##;
#    $basenameCur =~ s#\.# #g;

#    $basenameCur =~ s#\[(.+)\..+\.译\.(.+)出版社\.(\d{4})\].*#$1 - $2 - $3.pdf#;
#    $basenameCur =~ s#\[(.+)\..+\.译\.(.+)出版事业有限公司\.(\d{4})\].*#$1 - $2 - $3.pdf#;

#    $basenameCur =~ s#^(.+)\.\[法\].+#$1.pdf#;
#    $basenameCur =~ s#【贝克特研究】##;
#    $basenameCur =~ s#^.+《(.+)》.+#$1.pdf#;
#    $basenameCur =~ s#^卡尔维诺文集 ##;
#    $basenameCur =~ s#^卡尔维诺文集：##;
#    $basenameCur =~ s#^\[Toiffer选版\]让-马利·勒·克雷奇奥：##;
#    $basenameCur =~ s#昆虫记（全译本·卷(.+)）\.pdf#$hanziArab{$1}.pdf#;
#    $basenameCur =~ s#^鲁迅全集_##;
#    $basenameCur =~ s#^第(\d{2})卷_#卷$1 - #;
#    $basenameCur =~ s#\(_#(#;
#    $basenameCur =~ s#_\)#)#;
#    $basenameCur =~ s#_#-#g;
#    $basenameCur =~ s#^马尔克斯：##;
#    $basenameCur =~ s#^蒲宁文集\.##;
#    $basenameCur =~ s#^沈从文全集\.##;
#    $basenameCur =~ s#^第(\d)卷#第0$1卷#;
#    $basenameCur =~ s#^汪曾祺全集\.(\d)\.#$1 - #;
#    $basenameCur =~ s#^闻一多全集 ##;
#    $basenameCur =~ s#^朱光潜全集##;
#    $basenameCur =~ s#^(\d)\.pdf#0$1.pdf#;
#    $basenameCur =~ s#^博尔赫斯全集 ##;

#    $basenameCur =~ s#\.# #g;
#    $basenameCur =~ s# pdf$#.pdf#;
#    $basenameCur =~ s# chm#.chm#;
#    $basenameCur =~ s# rar$#.rar#;
#    $basenameCur =~ s# zip$#.zip#;

#    $basenameCur =~ s# rm$#.rm#;

#    $basenameCur =~ s#^奥本海姆《信号与系统》##;

#    $basenameCur =~ s#^www.dream2008.cn@兄弟连EP##;

#    $basenameCur =~ s#^\d{2}\.##;

#    $basenameCur = '0'.$basenameCur;

#    $basenameCur =~ s###;
#    $basenameCur =~ s#\.英文版##;
#    $basenameCur =~ s#\.#-#g;
#    $basenameCur =~ s#-pdf$#.pdf#;
#    $basenameCur =~ s#\.# #g;
#    $basenameCur =~ s# pdf$#.pdf#;

#    $basenameCur =~ s#\(英文版\)# - EN#g;
#    $basenameCur =~ s#\ 中文版# - CN#g;
#    $basenameCur =~ s# 文字版##g;
    $basenameCur =~ s#\.扫描版##g;
    $basenameCur =~ s#\.全彩版##g;
    $basenameCur =~ s#\.高清文字版##g;
    $basenameCur =~ s#\.全彩扫描版##g;
    $basenameCur =~ s#\.彩印版##g;
#    $basenameCur =~ s# 影印版##g;

    $basenameCur =~ s#\[##g;
    $basenameCur =~ s#\]##g;

#    $basenameCur =~ s#\.# #g;


#    $basenameCur =~ s#《##g;
#    $basenameCur =~ s#》##g;
#    $basenameCur =~ s#^计算机科学经典著作 ##g;
#    $basenameCur =~ s#^Linux英文原版图书系列 ##g;
#    $basenameCur =~ s#^高级英语写作教程 ##g;
#    $basenameCur =~ s#^美河制作 ##g;
#    $basenameCur =~ s#^美河提供 ##g;

#    $basenameCur =~ s#^世界全史：##g;
#    $basenameCur =~ s# 邱科平 ##g;

#    $basenameCur =~ s#新编中学数学解题方法全书##g;
#    $basenameCur =~ s#新编中学数学解题方法全书##g;
#    $basenameCur =~ s#英语学术写作格式参考资料 ##g;
#    $basenameCur =~ s#走向国际数学奥林匹克的平面几何试题诠释：##g;


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
