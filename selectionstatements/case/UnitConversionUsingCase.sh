#!/bin/bash -x
#Shell program for unit conversion using case statements

#constants
METER_CONVERSION=0.3048
INCH_CONVERSION=12
FEET_CONVERSION=0.0833
METER_TO_FEET_CONVERSION=3.28084
echo "1.Feet to Inch"
echo "2.Feet to Meter"
echo "3.Inch to Feet"
echo "4.Meter to Feet"
read -p "Enter your choice: " choice
#case statement
case $choice in
	1) read -p "Enter feet value :" feet
		echo "Inch value is  :" $(($feet*$INCH_CONVERSION))
	;;
	2) read -p "Enter feet value :" feet
		echo "Meter value is :" `echo "scale=3;$feet*$METER_CONVERSION" | bc -l`
	;;
	3) read -p "Enter Inch value :" inch
		echo "Feet value is  :" `echo "scale=5;$inch*$FEET_CONVERSION" | bc -l`
	;;
	4) read -p "Enter Meter value :" meter 
		echo "Feet value is :"	`echo "scale =3;$meter*$METER_TO_FEET_CONVERSION" | bc -l`
	;;
	*) echo "Invalid choice" 
esac 
