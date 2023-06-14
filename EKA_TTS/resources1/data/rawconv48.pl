#!/bin/perl
system("ls $ARGV[0]/wav > a");
open(f, '<a');
while(<f>){
	chomp;
	($a) = split(" ");
	$b = substr($a, 0, length($a)-4);
	system("ch_wave $ARGV[0]/wav/$a -f 48000 -itype riff -otype raw -F 48000 -o raw/$b.raw ")
}
system("rm -f a");
