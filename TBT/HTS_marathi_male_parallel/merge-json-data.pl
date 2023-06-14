#!/usr/bin/perl
use strict;
use utf8;

my $dirname;
my $filename;
my $file_path;
my @syllables;
my @parts;
my @timeframe;
my $n;
my $middlevalue;
my @syllablelab;
my $part1;
my $part2;
my $part3;
my $part0;
my $position;
my $charposition;
$dirname = './json-data';
open(my $fh,'>','JSon.txt');
#print $fh "check from merg\n";
opendir(DIR, $dirname) or die "Could not open $dirname\n";
my $count=0;
my $marksid= $ARGV[0];
#my $data1 = '{"id":"' . $marksid . '", "data":[ ';
my $data1 = '{"id":"' . $marksid . '", "data":[ ';
print "data1=$data1\n"; 
my $baseposition=0;
my $basecharposition=0;

opendir( my $data_dh, $dirname) or die "Cannot open $dirname\n";
my @files = sort { $a <=> $b } readdir($data_dh);
while ( my $filename = shift @files ) {




#while ($filename = readdir(DIR)) {
  print "$filename\n";
  if($filename ne '.' || $filename ne '..')
  {
  $count++;
  $file_path='./json-data/'.$filename;
  print "$file_path\n";
  open(FILE, "<$file_path");

  while (my $line=<FILE>)
    {
	$n++;
	chop  $line;
	my @parts=split(/\s+/,$line);
             print "\nline=$line";
        $part0=@parts[0];
        $part1=@parts[1];
	$part2=@parts[2];
	$part3=@parts[3];

     print "\nparts0=@parts[0]";
      print "\nparts1=@parts[1]";
      print "\nparts2=@parts[2]";
      print "\nparts3=@parts[3]";
      $position=$baseposition + $part1;
      #$charposition=$basecharposition + $part2;
    $charposition=$basecharposition + $part2 -2;
        
          if($n ==1)
              {
            $data1 = $data1 . '{"Word": "' .$part0. '", "Position": ' .$position. ', "CharPosition": ' .$charposition. '}';
		}
              else
              {
             $data1 = $data1 . ',{"Word": "' .$part0. '", "Position": ' .$position. ', "CharPosition": ' .$charposition. '}';
              }

       	  print "\ndata1 =$data1";
      }

  print "\nparts0=$part0";
      print "\nparts1=$part1";
      print "\nparts2=$part2";
      print "\nparts3=$part3";
 $baseposition=$baseposition + $part1 ;
 $basecharposition=$basecharposition+$part2+$part3+1;

  close FILE;



 
  }
}


 $data1=$data1."]}";
 print "\ndata1 =$data1";
print $fh "$data1";
my $calltopost=`python3 pump.py`;
closedir(DIR);
