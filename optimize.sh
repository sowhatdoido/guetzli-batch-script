#!/bin/bash

opts=""
target="*.jpg"

while [ ! $# -eq 0 ]
do
	case "$1" in
		--verbose | -v)
			opts="${opts}--verbose "
			;;
		--quality | -q)
			shift
			opts="${opts}--quality $1 "
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
	echo "Optimizing - ${f##*/}"
	guetzli ${opts}${f} "${workingPath}/optimized/${f##*/}"
done