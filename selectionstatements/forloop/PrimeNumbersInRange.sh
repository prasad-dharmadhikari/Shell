#!/bin/bash -x
#Shell program for printing the prime numbers within specified range using for loop
read -p "Enter min range:" minimim
read -p "Enter max range:" maximum
echo "Prime numbers between $minimum and $maximum are: "
for ((number = $minimum ; number <= $maximum ; number++))
do
	count=0
	for((iter=2;iter<=$number/2;iter++))
	do
		if((number%iter==0))
		then
			((count++))
		fi
	done
	if ((count==0 && number!=1))
	then
		echo $number
	fi
done
