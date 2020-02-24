#!/bin/bash -x
#shell program to take input from user and print in words
read -p "enter a single digit number: " number
if (( number <= 9 ))
then
	if (( number == 0 ))
	then
		echo "Zero"
	elif (( number == 1 ))
	then
		echo "One"
	elif (( number == 2 ))
	then
		echo "Two"
	elif (( number == 3 ))
  	then
    	echo "Three"
  	elif (( number == 4 ))
  	then
    	echo "Four"
	elif (( number == 5 ))
  	then
    	echo "five"
  	elif (( number == 6 ))
  	then
    	echo "Six"
	elif (( number == 7 ))
	then
		echo "Seven"
	elif (( number == 8 ))
	then
		echo "Eight"
	elif (( number == 9 ))
	then
		echo "Nine"
	fi
else
	echo "Invalid input....."
fi
