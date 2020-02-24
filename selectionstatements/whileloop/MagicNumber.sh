#!/bin/bash -x
# Shell program for randomly taking a number and searching the number within specified range usng binary search
number=$((RANDOM % 100 + 1))
low=1
high=100
while (($low<=$high))
do
	 mid=$(( (($low+$high))/2 ))
	 if (($number<$mid))
	 then
		high=$mid-1   
 	 elif (($number>$mid))
	 then
		low=$mid+1
	 elif (($number==$mid))
	 then
		echo "$Number is found"
		break
	 fi
done
