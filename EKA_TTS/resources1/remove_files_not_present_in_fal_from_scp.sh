#!/bin/sh

ls gv/qst001/ver1/fal/ > fal_list
fal_count=$(cat fal_list | wc -l)
if [ "$fal_count" -eq "0" ]; then
	echo "empty fal_list. check path in script"
else
	sed -i "s/.lab//g" fal_list
	cp data/scp/train.scp data/scp/train.scp_before_remove_fal
	cat data/scp/train.scp | sed "s/.cmp//g" | rev | cut -d'/' -f 1 | rev > files_in_scp
	grep -vf  fal_list files_in_scp > files_in_scp_and_not_in_fal_folder
	files_to_remove=$(cat files_in_scp_and_not_in_fal_folder)

	for file in $files_to_remove ; do
		echo "removing file "$file" from train.scp" > removed_list
		echo "removing file "$file" from train.scp" 
		sed -i "/$file.cmp/d" data/scp/train.scp
	done
fi

