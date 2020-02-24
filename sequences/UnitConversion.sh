#!/bin/bash -x
#Shell program for unit conversion from inches to feet,and meters to acers
oneft=12
length=60
breadth=40
METER_CONVERSION=0.3048
ACRE_CONVERSION=0.000247105
echo "42 inches in feet is:"
echo "scale=3; 42/$oneft" | bc -l
area=$length*$breadth 
echo "Area in meters is:"
echo "scale=5; $area*$METER_CONVERSION" | bc -l
echo "Area of 25 plots in acers is:" 
echo "scale=8; $area*$METER_CONVERSION*25*$ACRE_CONVERSION" | bc -l
