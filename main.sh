#!/bin/bash
source ./add.sh #loads add.sh into current script and make add() function avaible
source ./sub.sh
source ./mul.sh
source ./div.sh

while true
do
	echo "1) Addition:"
	echo "2) Subtraction:"
	echo "3) Multipication:"
	echo "4) division:"
	echo "5) Exist:"

read -p "Choose Any one of the Options From the below list:" option

if [ "$option" -eq 5 ]
then
	echo "Exiting......"
	break
fi
read -p "Enter the numbers(space seperated)" -a nums

                #-a nums means here it's a array
                #input into an array named nums


                #user entered 10 20 30 then it will store like this
                #nums[0]=10
                #nums[1]=20
                #nums[2]=30

case $option in 
	1)
		
		result=$(add "${nums[@]}") 
	       
         	#${nums[@]} expands all arguments and add call the function
		#add 10 20 30 results = 60
		;;
	2)
		
		result=$(sub "${nums[@]}")
		echo $ress
		;;
	3)
		result=$(mul "${nums[@]}")
		;;
	4)
		result=$(div "${nums[@]}")
		;;
	5)
		echo "Exist:"
		echo "Thanks For You're time:"
		;;
	*)
		echo "Invalid"
		;;
esac
echo "Result = $result"
done

