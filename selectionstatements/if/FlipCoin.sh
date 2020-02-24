#!/bin/bash -x
# Shell program to simulate flip coin problem
random=$(( RANDOM % 2 ))
if(( $random == 0))
then
	echo "tails"
else
	echo "heads"
fi
