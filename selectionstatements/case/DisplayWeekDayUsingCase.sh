#!/bin/bash -x
#Shell program to take day number as input and print the day of week accordingly
read -p "Enter a number:" day
case $day in
	1) echo "Sunday"
	;;
	2) echo "Monday"
	;;
	3) echo "Tuesday"
	;;
	4) echo "Wednesday"
	;;
	5) echo "Thursday"
	;;
	6) echo "Friday"
	;;
	7) echo "Saturday"
	;;
	*) echo "Invalid input"
esac

