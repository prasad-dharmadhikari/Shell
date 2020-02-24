#!/bin/bash -x
#shell program for storing the numbers from 1 to 100 in which digits are repeated twice in array
count=0
for((iter=1;iter<=100;iter++))
do
	if(($iter%11==0))
	then
		reapetedDigitArray[((count++))]=$iter
	fi
done
echo "Array of reapeted digits is :[${reapetedDigitArray[@]}]"
