#!/bin/bash

writefile=$1
writestr=$2

if [ $# -lt 2 ]
then
	echo "Not enough parameters passed"
	exit 1
fi

mkdir -p "$(dirname "${writefile}")" && touch ${writefile}

echo ${writestr} > ${writefile}
