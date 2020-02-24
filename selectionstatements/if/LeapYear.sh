read -p "enter the year:" year
if (( $year>=1000 ))
then
	if (( (( $year%4 == 0 && $year%100!=0 )) || (( $year%400 == 0 ))  ))
	then
		echo "given year is the leap year...."
	else
		echo "given year is not leap year......"
	fi
else
	echo "invalid year......"
fi

