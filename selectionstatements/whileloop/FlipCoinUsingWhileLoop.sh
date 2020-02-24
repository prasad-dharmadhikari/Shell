#!/bin/bash -x
# Shell program for flip coin simulation till either heads or tails wins 11 times using while loop
headCount=0
tailCount=0
while(( $headCount <11 && $tailCount < 11 ))
do
	random=$(( RANDOM%2 ))
	if(($random == 0))
	then
		((tailCount++))
	else
		((headCount++))
	fi
done

if(($headCount==11))
then
	echo "Head wins 11 times"
else
	echo "Tail wins 11 times"
fi
