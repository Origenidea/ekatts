perl ./bin/il_parser_hts_marathi.pl ठिकाण .
 numberOfPhonesInWord=`cat wordpronunciation | awk -F'"' '{print (NF-1)/2}'`
 echo $numberOfPhonesInWord >> noOfPhonesInEachWord