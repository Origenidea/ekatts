#!/bin/bash

if test "$#" -ne 6; then
    echo "###############################"
    echo "Usage:"
    echo "bash find_word_durations.sh lab_file trace_file test.done.data boundaryType framePeriod"
    echo 'boundaryType = "frame"/"time"'
    echo "framePeriod = frame period (in milliseconds)"
    echo "Example:  bash find_word_durations.sh '/tts/HTS2.3/parser/prompt-lab/test.lab' '/tts/HTS2.3/gen/qst001/ver1/hts_engine/iitm_unified_don_test.trace'  '/tts/HTS2.3/parser/etc/test.done.data' 'time' 5"
    echo "################################"
    exit 1
fi
touch output
lab_file=$1
trace_file=$2
test_file=$3
boundaryType=$4
framePeriod=$5
marksid=$6

#echo "marksid=$marksid" >> output
rm noOfPhonesInEachWord
cat $lab_file | cut -d' ' -f3 | tail -n +2 > phone_list #get the list of phones from lab and remove the # in first line
#---- output = phone_list

cat $trace_file | grep -i "Length                             ->" > frame_list
cat frame_list | cut -d'>' -f2 | sed "s|(frames)||g" | xargs | sed "s| |\n|g" > noOfFramesForEachState
#rm frame_list
awk '{sum+=$1} (NR%5)==0{print sum; sum=0;}' noOfFramesForEachState > noOfFramesForEachPhone
#rm noOfFramesForEachState
#---- output = noOfFramesForEachPhone

cat $test_file | cut -d'"' -f2  | sed 's/^[ \t]*//;s/[ \t]*$//' > test_words
echo "testwords=" >> output
cat test_words >> output
#rm noOfPhonesInEachWord # to remove any previous file
#touch noOfPhonesInEachWord
install -m 777 /dev/null noOfPhonesInEachWord
echo "before parser" >> output
rm noOfPhonesInEachWord


#rm test_words
cp ../parser/noOfPhonesInEachWord ./
noOfWords=`cat noOfPhonesInEachWord | wc -l`
#---- output = noOfPhonesInEachWord

if [ "${boundaryType}" = "frame" ];
then
	#python3.4 getBoundaries.py $boundaryType $framePeriod $marksid > boundaryInfo_frame.txt
         python3 getBoundaries.py $boundaryType $framePeriod $marksid > boundaryInfo_frame.txt
else
	#python3.4 getBoundaries.py $boundaryType $framePeriod $marksid >boundaryInfo_time.txt
         python3 getBoundaries.py $boundaryType $framePeriod $marksid >boundaryInfo_time.txt
fi


#deleting inte#rmediate files
#rm ./parser/wordpronunciation noOfFramesForEachPhone phone_list noOfPhonesInEachWord


