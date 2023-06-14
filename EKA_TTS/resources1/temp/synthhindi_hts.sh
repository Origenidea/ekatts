#!/bin/bash

#!/bin/sh

text=$1
nameOfSynthesizedFile=$2

if [ "$2" = "" ] 
then
	nameOfSynthesizedFile='test'
fi



rm parser/prompt-lab/*
rm parser/prompt-utt/*
cd parser
