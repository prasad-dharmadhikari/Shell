#!/bin/bash -x
#Shell program for printing the prime factors of a given number
read -p "Enter the number: " number
echo "prime factors of $number are: "
for ((factor = 2; factor <= $number; factor++ ))
do
	if(($number%$factor==0))
	then
		count=0
		for((iter=2;iter<=$factor/2;iter++))
		do
			if(($factor%$iter==0))
			then
				((count++))
			fi
		done
		if(($count == 0))
		then
			echo $factor;
		fi
	fi
done
