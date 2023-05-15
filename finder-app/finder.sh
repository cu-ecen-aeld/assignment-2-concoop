#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -lt 2 ]
then
	echo "Not enough parameters specified."
	exit 1

else
	if [ ! -d $filesdir ]
	then
		echo "Directory does not exist"
		exit 1
	fi
fi

no_of_files=$(find $filesdir -type f | wc -l)
no_of_lines=$(grep -r $searchstr $filesdir | wc -l)


echo "The number of files are ${no_of_files} and the number of matching lines are ${no_of_lines}"


