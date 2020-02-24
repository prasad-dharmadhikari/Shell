#!/bin/bash -x
#Shell program for taking input form command line and printing nth harmonic number using for loop
arg=$1
harmonicNumber=0
for ((number = 1 ; number <= arg ; number++ ))
do
	harmonicNumber=`echo "scale=5 ; $harmonicNumber + 1/$number" | bc -l` 
done
echo "$arg th harmonic number is: $harmonicNumber"
