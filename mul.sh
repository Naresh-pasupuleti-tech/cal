#!/bin/bash
mul()
{
	local result=1
	for i in "$@"
	do
		result=$((result * i))
	done
	echo $result
}
