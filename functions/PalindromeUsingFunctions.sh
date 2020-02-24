#!/bin/bash -x
#Shell program for checking whether two numbers are palindromes or not using functions

#Function for checking whether the given number is palindrome or not
function isPalindrome()
{
	firstNumber=$1
	secondNumber=$2
	temp=$firstNumber
	while(($temp!=0))
	do
		r=$((temp%10))
		sum=$((sum*10+r))
		temp=$((temp/10))
	done
	if (( $sum==$secondNumber ))
	then
		echo "Given numbers are palindromes" 
	else
		echo "Given numbers are not palindromes"
	fi
}
read -p "Enter first number:" firstNumber
read -p "Enter second number:" secondNumber
result="$( isPalindrome $firstNumber $secondNumber )" #Function call
echo $result
