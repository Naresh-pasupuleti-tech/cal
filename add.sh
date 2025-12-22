#!/bin/bash
add()
{
	local sum=0 #it's intially we intialised with 0
	for i in "$@" # $@ every arguments entered by user
	do
		sum=$((sum + i)) #sum = sum +i(user choice like 10) then sum = 0+10 sum = 10
	done
	echo $sum # 10
}
