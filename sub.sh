#!/bin/bash
sub()
{
	local res=$1 #here iam doind sub so res=$1 --> means first value store here
	#so user input ---> 100 20 ===> so now res = 100 
	shift # shift means drop the first value and move left res = 100
	for i in "$@" #$@ we are confirming that 100 is there in nums aray
	do
		res=$((res - i)) # res=$((100-20)) = 80
	done
	echo $res # so 80
}

