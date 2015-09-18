#!/bin/sh
# This script takes the sequence of arguments : the path to the binary of bgpdump, path to the result files
cd  $1
FILES=/media/nikhil/Windows8_OS/Hard_Disk/Project/Belarusian/Control_Plane/Data/archive.routeviews.org/bgpdata/2013.02/RIBS/27_Feb/*
for f in $FILES
do
	fname=`basename $f`
	echo "============================"
	echo $fname.txt
	echo $1
	echo $2
	echo "============================"
    ./bgpdump -M $f > $2/$fname.txt
done
