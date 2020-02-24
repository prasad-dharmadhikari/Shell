#!/bin/bash -x
#Shell program for printing the factorial of number using for loop
read -p "Enter a number:" number
factorial=1
for ((counter=1;counter<=$number;counter++))
do
	factorial=$(($factorial*$counter))
done

echo "Factorial of $number is: $factorial"
