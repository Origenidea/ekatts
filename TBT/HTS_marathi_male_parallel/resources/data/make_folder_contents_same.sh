#!/bin/sh

# sample usage = sh make_folder_contents_same.sh "/sre/tts/anju/interspeech2018/test1/HTS2.3_IITM/gv/qst001/ver1/fal" ".lab" "/sre/tts/anju/interspeech2018/test1/HTS2.3_IITM/data/cmp" ".cmp" "/sre/tts/anju/interspeech2018/test1/HTS2.3_IITM/moved"


folder1=$1				# /sre/tts/anju/interspeech2018/test1/HTS2.3_IITM/gv/qst001/ver1/fal
extension1=$2				# .lab
folder2=$3				# /sre/tts/anju/interspeech2018/test1/HTS2.3_IITM/data/cmp
extension2=$4				# .cmp
path_to_move_difference=$5		# /sre/tts/anju/interspeech2018/test1/HTS2.3_IITM/moved1

curr_path=`pwd`

ls  $folder1 | xargs -n 1 basename > filelist1
sed -i "s/${extension1}//g" filelist1
sort filelist1 > filelist1_sorted

ls  $folder2 | xargs -n 1 basename > filelist2
sed -i "s/${extension2}//g" filelist2
sort filelist2 > filelist2_sorted

comm -12 filelist1_sorted filelist2_sorted > common_files
sort common_files > common_files_sorted

cd $path_to_move_difference
movePathFolder1name=`echo $folder1 |  sed 's#.*/##'`
movePathFolder2name=`echo $folder2 |  sed 's#.*/##'`

mkdir $movePathFolder1name
mkdir $movePathFolder2name

cd $curr_path
# move unmatched files in folder1 and copy it to another folder

comm -1 -3 common_files_sorted filelist1_sorted  > files_to_be_removed_in_folder1
while read p; do
   echo "moving "$p$extension1
   mv $folder1/$p$extension1 $path_to_move_difference/$movePathFolder1name/.
done <files_to_be_removed_in_folder1

# remove unmatched files in folder2 and copy it to another folder
comm -1 -3 common_files_sorted filelist2_sorted > files_to_be_removed_in_folder2
while read p; do
   echo "moving "$p$extension2
   mv $folder2/$p$extension2 $path_to_move_difference/$movePathFolder2name/.
done <files_to_be_removed_in_folder2



