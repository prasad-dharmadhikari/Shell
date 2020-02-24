#!/bin/bash -x
#Shell program to perform arithmatic opeartions and find minimum and maximum from it
read -p "Enter first number:" a
read -p "Enter second number:" b
read -p "Enter third number:" c
number1=`echo "scale=2 ; $a+$b*$c" | bc -l`
number2=`echo "scale=2 ; $c+$a/$b" | bc -l`  
number3=`echo "scale=2 ; $a%$b+$c" | bc -l`
number4=`echo "scale=2 ; $a*$b+$c" | bc -l`
echo "Num1 is :" $number1
echo "Num2 is :" $number2
echo "Num3 is :" $number3
echo "Num4 is :" $number4
min=$number1
max=$number1
if (( `echo "$number2 > $max" | bc -q`==1 ))
then
	max=$number2
elif (( `echo "$number3 > $max" | bc -q`==1 ))
then
	max=$number3
elif (( `echo "$number4 > $max" | bc -q`==1  ))
then
	max=$number4
fi
echo "Maximum is :" $max
if (( `echo "$number2 <= $min" | bc -q`== 1 ))
then
    min=$number2
fi
if (( `echo "$number3 <= $min" | bc -q`== 1 ))
then
    min=$number3
fi
if (( `echo "$number4 <= $min" | bc -q`== 1  ))
then
    min=$number4
fi
echo "Minumum is :" $min
