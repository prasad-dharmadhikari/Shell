#!/bin/bash -x

#shell program to take 3 command line arguments and print the day of week
month=$1
day=$2
year=$3
y0=$(( year-(14-month)/12 ))
x=$(( y0+y0/4-y0/100+y0/400 ))
m0=$(( month+12*((14-month)+12)-2 ))
d0=$(( (day+x+31*m0/12)%7 ))

if (( $d0 == 0 ))
then
	echo "Sunday"
elif (( $d0 == 1 ))
then
	echo "Monday"
elif (( $d0 == 2 ))
then
	echo "Tuesday"
elif (( $d0 == 3 ))
then
	echo "Wednesday"
elif (( $d0 == 4 ))
then
	echo "Thursday"
elif (( $d0 == 5 ))
then
	echo "Friday" 
elif (( $d0 == 6 ))
then
	echo "Saturday"
fi
