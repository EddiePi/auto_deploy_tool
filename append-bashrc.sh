#!/bin/bash
this_folder=$(cd "$(dirname "$0")";pwd)
while read line
do
	echo $line >> ~/.bashrc
	#echo $line >> $this_folder/.bashrc
done < $this_folder/to-append.txt
