#!/bin/bash -x
#Shell program to sort the array and find the second largest and second smallest element in array
for((iter=0;iter<10;iter++))
do
  	randomArray[i]=$((RANDOM%900+100))
done
echo "Unsorted array is: "${randomArray[@]}
for((iter=0;iter<10;iter++))
do
	for((iter2=iter+1;iter2<10;iter2++))
	do
		if((${randomArray[iter]}>${randomArray[iter2]}))
		then
			temp=${randomArray[iter]}
			randomArray[iter]=${randomArray[iter2]}
			randomArray[iter2]=$temp
		fi
	done
done
echo "Sorted array is: " ${randomArray[@]}
echo "Second largest element is : " ${randomArray[8]}
echo "Second smallest element is : " ${randomArray[1]}
