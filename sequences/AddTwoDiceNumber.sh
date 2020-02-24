#!/bin/bash -x

#shell program to add two numbers on dice 
randomNumber1=$((RANDOM%6+1));
randomNumber2=$((RANDOM%6+1));
echo $(($randomNumber1 + $randomNumber2))
