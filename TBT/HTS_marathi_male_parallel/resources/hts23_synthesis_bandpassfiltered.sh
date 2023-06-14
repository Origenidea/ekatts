#!/bin/sh

text=$1
nameOfSynthesizedFile=$2
lang=$3
gender=$4

if [ "$2" = "" ] 
then
	nameOfSynthesizedFile='test'
fi

cd resources$2

rm parser/prompt-lab/*
rm parser/prompt-utt/*
cd parser
echo "( test \" $text \" )" > etc/txt.done.data
festival -b festvox/build_clunits.scm '(build_prompts "etc/txt.done.data")'

cd ..

rm data/utts/*
rm data/labels/full/*
rm data/labels/mono/*

cp parser/prompt-utt/* data/utts/.
cd data/utts
#rename 's/^/iitm_unified_don_/g' *
rename 's/^/tdil_indic_don_/g' *

cd ../

make lab
rm labels/gen/*

cd labels/full
for f in *.lab; do cat $f|cut -c23- > ../gen/$f;done
cd .. # labels folder

cd .. # data folder
make scp

cd .. #HTS23 folder
#make voice
echo "Running a training/synthesis perl script (Training.pl)...."
echo $lang >> pranaw.txt
echo $gender >> pranaw.txt
/usr/bin/perl scripts/Training.pl scripts/Config.pm $PWD $lang $gender

echo $2
echo $nameOfSynthesizedFile

cd gen/qst001/ver1/hts_engine
#rename 's/iitm_unified_don_test./'$nameOfSynthesizedFile'./g' *
rename 's/tdil_indic_don_test./'$nameOfSynthesizedFile'./g' *
cd ../../../../ #HTS23 folder

cp gen/qst001/ver1/hts_engine/$nameOfSynthesizedFile.wav AudioEnhance/src/wav/
cd AudioEnhance/src/
sh scrpt1.sh
cd ../../
cp AudioEnhance/src/temp/$nameOfSynthesizedFile.wav gen/qst001/ver1/hts_engine/filtered_$nameOfSynthesizedFile.wav


