#!/bin/bash -x

number1=$((RANDOM%900 + 100))
number2=$((RANDOM%900 + 100))
number3=$((RANDOM%900 + 100))
number4=$((RANDOM%900 + 100))
number5=$((RANDOM%900 + 100))
echo $number1 $number2 $number3 $number4 $number5
min=$number1
max=$number1
#find minimum
if [ $number2 -lt $min ]
then
	min=$number2
elif [ $number3 -lt $min ]
then
        min=$number3
elif [ $number4 -lt $min ]
then
        min=$number4
elif [ $number5 -lt $min ]
then
        min=$number5
fi
echo "minimum number is: " $min
#find maximum number
if [ $number2 -gt $max ]
then
        max=$number2
elif [ $number3 -gt $max ]
then
        max=$number3
elif [ $number4 -gt $max ]
then
        max=$number4
elif [ $number5 -gt $max ]
then
        max=$number5
fi
echo "maximum number is: " $max


