#!/bin/bash -x
#Shell program to check ehether given number is prime or not using for loop
read -p "Enter a number: " number
count=0
for ((iter=2 ; iter<= $number/2 ; iter++ ))
do
	if (( $number%$iter == 0 ))
	then
		(( count++ ))
	fi
done
if (($count == 0 && number!= 1))
then
	echo "Given number is prime number"
else
	echo "Given number is not a prime number"
fi
