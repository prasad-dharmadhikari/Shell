#!/bin/bash -x
#Shell program for finding the seccond largest and second smallest from array of random numbers
for((iter=0;iter<10;iter++))
do
	randomArray[iter]=$((RANDOM%900+100))
done
echo "Random array is: " ${randomArray[@]}
secondLargest=${randomArray[0]}
largest=${randomArray[0]}
smallest=${randomArray[0]}
secondSmallest=${randomArray[0]}
for((iter=0;iter<10;iter++))
do
	if((${randomArray[iter]} > $largest))
	then
		secondLargest=$largest
		largest=${randomArray[iter]}
	fi
	if((${randomArray[iter]} > $secondLargest && ${randomArray[iter]} != $largest))
	then
		secondLargest=${randomArray[iter]}
	fi
done
echo "Second largest element is: $secondLargest"
for((iter=0;iter<10;iter++))
do
   if((${randomArray[iter]} < $smallest))
	then
		secondSmallest=$smallest
    	smallest=${randomArray[iter]}
 	fi
	if((${randomArray[iter]} < $secondSmallest && ${randomArray[iter]} != $smallest))
  	then
 		secondSmallest=${randomArray[iter]}
  	fi
done
echo "Second smallest element is : $secondSmallest"
