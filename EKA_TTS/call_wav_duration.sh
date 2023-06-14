#! /bin/bash


CUR=$PWD
cd $CUR/resources$2/word_duration
echo "find_word_durations.sh $CUR/resources$2/parser/prompt-lab/test.lab $CUR/resources$2/gen/qst001/ver1/hts_engine/$2.trace  $CUR/resources$2/parser/etc/txt.done.data 'time' 5 $1" >> /var/www/html/tts3/output

sh find_word_durations.sh $CUR/resources$2/parser/prompt-lab/test.lab $CUR/resources$2/gen/qst001/ver1/hts_engine/$2.trace  $CUR/resources$2/parser/etc/txt.done.data 'time' 5 $1  >> /var/www/html/tts3/output

#rm -rf /var/www/tts3/HTS_hindi_male1_parallel$3

