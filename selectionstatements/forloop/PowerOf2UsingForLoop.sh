#!/bin/bash -x
# Shell program to print the table of power of 2
arg=$1
for (( number=0 ; number <= arg ; number++  ))
do
	power=$((2**$number))
	echo $power
done
