#!/bin/bash

echo "atish"
echo "param1=$1 param2=$2"

cd resources$2
echo $1 > sentence.txt

    sed -i s/\(/\ \(\ \,\ \,\ \ / sentence.txt
    sed -i s/\)/\ \)\ \,\ \,\ \ / sentence.txt
    sed -i s/\।/\;\ / sentence.txt
    #rm data/*/*.lab
    perl parser/rewrite.pl

    rm -f sentence.txt
    cd parser/
  ../bin/festival -b festvox/build_clunits.scm '(build_prompts "etc/txt.done.data")'  >> pranaw.txt
 #  festival -b festvox/build_clunits.scm '(build_prompts "etc/txt.done.data")' 
 
 
    cd ../
    mv parser/prompt-utt/test.utt data/utts/
    cd data/
    make label
    find labels/full/ -name \*.lab -exec sed -i "s/  / /g" {} \;
    find labels/full/ -name \*.lab -exec sed -i "s/  / /g" {} \;
    find labels/full/ -name \*.lab -exec sed -i "s/  / /g" {} \;
    find labels/full/ -name \*.lab -exec sed -i "s/  / /g" {} \;
    cut -d " " -f4 labels/full/test.lab > labels/gen/test.lab
    cd ../
  #   ./hts_engine_API-1.10/bin/hts_engine -m voices/cmu_us_arctic_slt.htsvoice  -ow test.wav data/labels/gen/test.lab
   ./bin/hts_engine -m  ../voices/iitm_unified_hindi.htsvoice  -ow test.wav data/labels/gen/test.lab
  #hts_engine -m  ../voices/iitm_unified_hindi.htsvoice  -ow test.wav data/labels/gen/test.lab
 
        rm gen/hts_engine/*.raw
        rm pranaw.txt
#perl scripts/synth.pl iitm_unified_hindi.htsvoice
#play gen/hts_engine/test.wav

