#!bin/bash -x
# Shell program for checking whether the given number and it's palindrome is prime or not
# Function for checking whether the number is prime or not
function isPrime()
{
	count=0
	for ((iter=2;iter<=$number/2;iter++ ))
	do
		if (( $number%$iter==0 ))
		then
			((count++))
		fi
	done
	if(($count==0 && $number!=1))
	then
		echo 1
	fi
}
# Function for getting palindrome of number
function getPalindrome()
{
	temp=$number
	while(($temp!=0))
	do
		r=$((temp%10))
		sum=$((sum*10+r))
		temp=$((temp/10))
	done
	echo $sum
}
read -p "Enter a number:" number
result="$( isPrime $number)" #Function call
if ((result==1))
	then
		echo "$number is prime number"
	else
		echo "$number is not prime number"
fi
palindromeNumber="$( getPalindrome $number)" #Function call
echo "palindrome Number of $number is $palindromeNumber "
result="$( isPrime $palindromeNumber )" #Function call
if ((result==1))
	then
		echo "$palindromeNumber is prime number"
	else
		echo "$palindromeNumber is not prime number"
fi
