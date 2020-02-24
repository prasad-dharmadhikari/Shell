#!/bin/bash -x

#shell program to understand the operator precedence of arithmatic operators
read -p "enter first number:" a
read -p "enter second number:" b
read -p "enter third number:" c
echo "a+b*c is: " $(( $a+$b*$c ))
echo "c+a/b is: " $(( $c+$a/$b ))
echo "a%b+c is: " $(( $a%$b+$c ))
echo "a*b+c is: " $(( $a*$b+$c ))
