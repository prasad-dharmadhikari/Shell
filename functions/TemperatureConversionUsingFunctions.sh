#!/bin/bash -x
#Shell program to convert the temperature from degree to farenheit and vice-versa using functions

#Constants for program
MIN_CELSIUS_TEMP=0
MAX_CELSIUS_TEMP=100
MIN_FARENHEIT_TEMP=32
MAX_FARENHEIT_TEMP=212
#Function for converting celsius temperature to farenheit
function celsiusToFarenheit()
{
     read -p "Enter celsius temperature :" celsiusTemp
     if(( $celsiusTemp >= $MIN_CELSIUS_TEMP && $celsiusTemp <= $MAX_CELSIUS_TEMP ))
     then
	       farenhitTemp=`echo "scale=3; (($celsiusTemp*9/5))+$MIN_FARENHEIT_TEMP" | bc -l`
	       echo "Temperature in farenheit is:" `echo "scale=3; $farenhitTemp" | bc -l` 
     else
    		 echo "Invalid input...."
     fi
}
#Function for converting farenheit temperature to celsius
function farenheitToCelsius()
{
     read -p "Enter farenheit temperature :" farenheitTemp
     if(( $farenheitTemp >= $MIN_FARENHEIT_TEMP && $farenheitTemp <= $MAX_FARENHEIT_TEMP ))
     then
          celsiusTemp=`echo "scale=3; (($farenhitTemp-$MIN_FARENHEIT_TEMP))*5/9" | bc -l`
          echo "Temperature in celsius is:" `echo "scale=3; $celsiusTemp" | bc -l` 
     else
          echo "Invalid input...."
     fi
}
echo "1.Celsius to Farenhit"
echo "2.Farenhit to Celsius"
read -p "Enter your choice: " choice
case $choice in
	1)celsiusToFarenheit #Function call
	;;
	2)farenheitToCelsius #Function call
	;;
	*)echo "Invalid choice"
esac


