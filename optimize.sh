#!/bin/bash

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

cmd="guetzli "
target="*.jpg"

while [ ! $# -eq 0 ]
do
	case "$1" in
		--verbose | -v)
			cmd="${cmd}--verbose "
			;;
		--quality | -q)
			shift
			cmd="${cmd}--quality $1 "
			shift
			;;
		--target | -t)
			shift
			target="$1"
			shift
			;;
		*)
			args="$1";
        	;;
	esac
	shift
done

workingPath="${PWD}/${args}"

# Delete optimized folder
rm -rf "${workingPath}/optimized"

# Create new optimized folder
mkdir "${workingPath}/optimized"

for f in ${workingPath}/${target}; do
	#echo "Optimizing - ${f##*/}"
	eval ${cmd}"\"${f}\"" "\"${workingPath}/optimized/${f##*/}\""
done

IFS=$SAVEIFS