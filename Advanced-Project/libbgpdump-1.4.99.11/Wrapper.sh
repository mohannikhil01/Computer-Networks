#!/bin/sh
# This script takes the sequence of arguments : the path to the binary of bgpdump, path to the result files
for file in $(find /home/nikhil/Desktop/Semester-2/Project/New_Script/www.pch.net/resources/Raw_Routing_Data -name "*.gz")
do
	echo "============================"
	fname=`basename $file`
	
	#echo $file.txt
	#echo "${file##*/}"
	echo "${file%/*}/Result/$fname.txt"
	mkdir -p ${file%/*}/Result
	./bgpdump -M $file > ${file%/*}/Result/$fname.txt
	echo "============================"
done
