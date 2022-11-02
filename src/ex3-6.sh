#!/bin/bash
input=$1
if [ -f "input" ]
then
	echo "$input exitsts"
else
	eval "mkdir $input"
	eval "cd $input"
	eval "touch file0.txt"
	eval "touch file1.txt"
	eval "touch file2.txt"
	eval "touch file3.txt"
	eval "touch file4.txt"
	eval "tar cf files.tar *.txt"
	eval "ls"
	eval "mkdir files"
	eval "mv files.tar files"
	eval "cd files"
	eval "tar xvf files.tar"

fi
exit 0
