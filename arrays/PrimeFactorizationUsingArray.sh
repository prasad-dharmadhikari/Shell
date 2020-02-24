#!/bin/bash -x
#Shell program to store the prime factors of a number into array and print it
read -p "Enter the number: " number
temp=$number
iter=0
while(($number%2==0))
do
	primeFactor[((iter++))]=2
	number=$(($number/2))
done
for((counter=3;counter<=$number;counter=$((counter+2))))
do
	while(($number%$counter==0))
	do
		primeFactor[((iter++))]=$counter
		number=$(($number/$counter))
	done
done
echo "Prime factors of $temp are: " ${primeFactor[@]}
