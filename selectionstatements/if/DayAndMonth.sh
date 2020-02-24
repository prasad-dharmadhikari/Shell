#!/bin/bash -x
# Shell program to print day and month 
day=$1
month=$2
if (($day >= 20 && $day<=31 && $month == 3))
then
	echo " True "
elif (($day >= 1 && $day<=30 && $month == 4))
then
	echo " True "
elif (($day >= 1 && $day<=30 && $month == 5))
then
	echo " True "
elif (($day >= 1 && $day <= 20 && $month == 6))
then
	echo " True "
else
	echo " False "
fi


