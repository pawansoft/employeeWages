#!/bin/bash
FULL_DAY_HOUR=8;
WAGE_PER_HOUR=20;
totalSal=0
countPresent=0;
countAb=0

	att=$((RANDOM%2))
	echo $att
	if [ $att -eq 0 ]
	then
		echo "Absent"
		
	else
		echo "Present"
		totalSal=$((totalSal + $FULL_DAY_HOUR * $WAGE_PER_HOUR))
	fi
	echo "$totalSal"

