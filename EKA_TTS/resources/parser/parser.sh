perl ./bin/il_parser_hts_marathi.pl द .
 numberOfPhonesInWord=`cat wordpronunciation | awk -F'"' '{print (NF-1)/2}'`
 echo $numberOfPhonesInWord >> noOfPhonesInEachWord