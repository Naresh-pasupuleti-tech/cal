#!/bin/bash
div()
{
	local result=$1
	shift
	for i in "$@"
	do
		if [ "$i" -eq 0 ]
		then
			echo "Error: Divison by zero"
		fi
		result=$((result / i))
	done
	echo $result
}
