#!/bin/bash -x
#Shell program for printing the table of power of 2 using while loop
number=$1
power=1
count=1
while (( $power < 256 && $count < $(($number+1)) ))
do
	power=$((2*power))
	echo "$power"
	((count++))
done
