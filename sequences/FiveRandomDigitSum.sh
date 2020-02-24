#!/bin/bash -x

#shell program to add 5 random two digit numbers and print the sum and average
sum=0
for i in 'seq 5'
do
	sum=$(($sum+$(( RANDOM%90 +10 ))))
done
echo "sum is:" $sum
echo "average is: " $(( $sum/5 ))
