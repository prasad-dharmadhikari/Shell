#!/bin/bash -x
#Shell program for printing the digits of a numberber with it's place value
read -p "Enter a number:" number

if (( ${#number} == 4 ))
then
	  	echo "Unit - " $(( $number%10 ))
  		number=$(($number/10))
	if (( ${#number} == 3 ))
	then
     	echo "Ten - " $(( $number%10 ))
     	number=$(($number/10))
	fi
	if (( ${#number} == 2 ))
	then
     	echo "Hundred - " $(( $number%10 ))
     	number=$(($number/10))
	fi
	if (( ${#number} == 1 ))
	then
     	echo "Thousand - " $(( $number%10 ))
     	number=$(($number/10))
	fi
elif (( ${#number} == 3))
then
	if (( ${#number} == 3))
	then
		echo "Unit - " $(( $number%10 ))
     	number=$(($number/10))
	fi
	if (( ${#number} == 2 ))
	then
     	echo "Ten - " $(( $number%10 ))
     	number=$(($number/10))
	fi
	if (( ${#number} == 1 ))
	then
     	echo "Hundred - " $(( $number%10 ))
     	number=$(($number/10))
	fi
elif (( ${#number} == 2))
then
		echo "Unit - " $(( $number%10 ))
  		number=$(($number/10))
	if (( ${#number} == 1 ))
	then
     	echo "Ten - " $(( $number%10 ))
     	number=$(($number/10))
	fi
elif (( ${#number} == 1 ))
	then
     	echo "Unit - " $(( $number%10 ))
     	number=$(($number/10))
fi



