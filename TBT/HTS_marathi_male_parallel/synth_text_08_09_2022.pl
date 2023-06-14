#!/usr/bin/perl
#cpan Parallel::ForkManager;
use Parallel::ForkManager;
# ----------------------------------------------------------------- #
#Ministry Of Communications & Information Technology, Govt. Of India#
#          and Indian Institute Of Technology - Madras              #
#                    developed by TTS Group                         #
#                  http://lantana.tenet.res.in/                     #
#                    Copyright (c) 2009-2015                        #
# ----------------------------------------------------------------- #
#                                                                   #
#                                                                   #
# All rights reserved.                                              #
#                                                                   #
# Redistribution and use in source and binary forms, with or        #
# without modification, are permitted provided that the following   #
# conditions are met:                                               #
#                                                                   #
# - Redistributions of source code must retain the above copyright  #
#   notice, this list of conditions and the following disclaimer.   #
# - Redistributions in binary form must reproduce the above         #
#   copyright notice, this list of conditions and the following     #
#   disclaimer in the documentation and/or other materials provided #
#   with the distribution.                                          #
# - Neither the name of the HTS working group nor the names of its  #
#   contributors may be used to endorse or promote products derived #
#   from this software without specific prior written permission.   #
#                                                                   #
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND            #
# CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,       #
# INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF          #
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE          #
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS #
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,          #
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED   #
# TO, PROCUREMENT OF SUBSTITUTE G0:00/0:00￼￼￼OODS OR SERVICES; LOSS OF USE,     #
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON #
# ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,   #
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY    #
# OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE           #
# POSSIBILITY OF SUCH DAMAGE.                                       #
# ----------------------------------------------------------------- #


my $story=$ARGV[0];
my $id=$ARGV[1];
my $lang=$ARGV[2];
my $gender=$ARGV[3];
if($story eq "") {
  print "Usage: perl $0 <inputstory>\n";
  print "Exiting at ". __FILE__ . ":". __LINE__ ."\n";
  exit -1;
}

$story =~ s/(^\s+|\s+$)//g;
$story =~ s/\।/\./g;
$story =~ s/\-/\ /g;
$story =~ s/\"//g;
$story =~ s/\//\ \/\ /g;
print "The story to be synthesized is: $story\n";
print "The output syllable file is: $out_word_file_name\n";

my @words = split(/\. /, $story);
print "The words are : \n";

$r=`rm out/*.wav`;
my $pm = Parallel::ForkManager->new(100); # number of parallel processes
for(my $i=1; $i<=@words; $i++)
{
$datestring = localtime();
print "Local date and time $datestring\n";
	 my $pid = $pm->start and next;   ### calling parallel processes.
	print "piiiiiidddddd=".$pid;
     $words[$i-1] =~ s/(^\s+|\s+$)//g;
        $words[$i-1] =~ s/[a-zA-Z]//g;
        $words[$i-1] =~ s/` |'//g;
   #  $r=`sh synthhindi.sh \"$words[$i-1]\" $i`;

#commented by Pranaw
my $rm='rm -rf  resources'.$i;
system($rm);
my $c='cp -rpf  resources resources'.$i;
system($c);


#  $r=` sh resources$i/synthhindi.sh \"$words[$i-1]\"  $i`  ;
  $r=` sh resources$i/hts23_synthesis_bandpassfiltered.sh \"$words[$i-1]\"  $i $lang $gender`  ;
 print "\nat0";
     print $r;
print "\nat1";
     if($i < 10 ) {
        $FileName = "000".$i;
     }
     elsif($i <100) {
        $FileName = "00".$i;
     }
     elsif($i <1000) {
        $FileName = "0".$i;
     }
     else {
        $FileName = $i;
     }
print "pranaw11";

   #  $r=`mv gen/hts_engine/test.wav out/$FileName.wav`;
my $wavname="test$i.wav";
  #$r=`mv resources$i/test.wav out/$FileName.wav`;
$r=`mv resources$i/gen/qst001/ver1/hts_engine/filtered_$i.wav out/$FileName.wav`;
#my $rm='rm -rf  resources'.$i;
#system($rm);



##############################code segment to get wave duration line wise#######
#$result=`sh call_wav_duration.sh $id $i`;
$result=`sh call_wav_duration.sh $id $i`;
#$r=`mv resources$i/word_duration/resource.txt json-data/$i`;

$r=`cp resources$i/word_duration/resource.txt json-data/$i`;


#################################################################################

print "pranaw22";

$pm->finish; # Terminates the child process
print "pranaw33";
print "pranaw$1";
}
print "pranaw44";
$pm->wait_all_children;
print "pranaw55";
$t = `perl merge-json-data.pl $id`;
$r=`normalize-audio out/*.wav`; 
$r=`ch_wave out/*.wav -o out.wav`;
#system("play out.wav");

